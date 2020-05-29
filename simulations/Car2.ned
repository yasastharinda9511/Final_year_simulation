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

import inet.applications.contract.IPingApp;
import inet.applications.contract.ITCPApp;
import inet.networklayer.configurator.ipv4.HostAutoConfigurator;
import inet.node.aodv.AODVRouter;
import inet.node.inet.WirelessHost;
import inet.routing.aodv.AODVRouting;
import inet.routing.olsr.OLSR;


//
// Wireless-enabled Host
//
module Car2 extends WirelessHost
{
    parameters:
        @display("i=device/cellphone");
        networkLayer.configurator.networkConfiguratorModule = "";
        wlan[*].mgmtType = default("Ieee80211MgmtAdhoc");

    submodules:
        ac_wlan: HostAutoConfigurator {
            @display("p=141,273");
        }

        olsr: OLSR {
            @display("p=597,242");
        }
    //        aodvRouting: AODVRouting {
    //            @display("p=527,308");
    //        }
    connections:
//        aodvRouting.ipOut --> networkLayer.transportIn++;
//        aodvRouting.ipIn <-- networkLayer.transportOut++;


        networkLayer.transportOut++ --> olsr.ipIn;
        olsr.ipOut--> networkLayer.transportIn++ ;
}

