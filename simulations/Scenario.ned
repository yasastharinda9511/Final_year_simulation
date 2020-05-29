//
// Copyright (C) 2006-2017 Christoph Sommer <sommer@ccs-labs.org>
//
// Documentation for these modules is at http://veins.car2x.org/
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//

package final_year_simulation.simulations;

import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import org.car2x.veins.subprojects.veins_inet.VeinsInetManager;
import inet.node.aodv.AODVRouter;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;

network Scenario
{
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=46,123");
        }
        manager: VeinsInetManager;
        node[0]: Car2;
        configurator:IPv4NetworkConfigurator {
            @display("p=100,100");
        }
}
