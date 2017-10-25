/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#ifndef FORCEREGENERATIONEVENT_H_
#define FORCEREGENERATIONEVENT_H_

#include "server/zone/objects/player/PlayerObject.h"

namespace server {
namespace zone {
namespace objects {
namespace player {
namespace events {

class ForceRegenerationEvent : public Task {
	ManagedWeakReference<PlayerObject*> player;
    uint32 current_tick;
    float force_regen_mod;

public:
	ForceRegenerationEvent(PlayerObject* pl) {
		player = pl;
        current_tick = 0;
        float force_regen_mod = 0;
	}

	void run() {
		ManagedReference<PlayerObject*> play = player.get();

		if (play == NULL)
        {
            current_tick = 0;
			return;
        }

		ManagedReference<SceneObject*> strongParent = play->getParent().get();

		if (strongParent == NULL)
        {
            current_tick = 0;
			return;
        }

		Locker _locker(strongParent);

		if (play->isOnline() || play->isLinkDead()) {
			if (play->getForcePowerMax() > 0  && (play->getForcePowerMax() - play->getForcePower() > 0)){
                CreatureObject* creature = dynamic_cast<CreatureObject*>(play->getParent().get().get());

                if (creature != NULL && !creature->isIncapacitated() && !creature->isDead())
                {
                    if (current_tick == 0)
                        force_regen_mod = creature->getSkillMod("jedi_force_power_regen");

                    uint32 regen_amount = (uint32)FloorF(force_regen_mod / 5.f);

                    if (current_tick == 4)
                        regen_amount += force_regen_mod % 5;

                    if (creature->isMeditating())
                    {
                        Reference<ForceMeditateTask*> medTask = creature->getPendingTask("forcemeditate").castTo<ForceMeditateTask*>();

                        if (medTask != NULL)
                            regen_amount *= 3;
                    }

                    play->doForceRegen(regen_amount);
                    current_tick = (current_tick + 1) % 5;
                }
                else
                {
                    current_tick = 0;
                }
			}
            else
            {
                current_tick = 0;
            }
		}
        else
        {
            current_tick = 0;
        }


	}

};

}
}
}
}
}

using namespace server::zone::objects::player::events;

#endif /*PLAYERRECOVERYEVENT_H_*/
