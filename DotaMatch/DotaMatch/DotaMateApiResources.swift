//
//  DotaMateApiResources.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class DotaMateApiResources: NSObject {
    
    enum Resource : String {
        
        //Matches
        case ResourceMatch = "/matches/{matchId}"
        
        //Search
        case ResourceSearch = "/search"
        
        //Players
        case ResourcePlayerGet              = "/players/{accountId}"
        case ResourcePlayerWinLoss          = "/players/{accountId}/wl"
        case ResourcePlayerMatches          = "/players/{accountId}/matches"
        case ResourcePlayerHeroes           = "/players/{accountId}/heroes"
        case ResourcePlayerPeers            = "/players/{accountId}/peers"
        case ResourcePlayerPros             = "/players/{accountId}/pros"
        case ResourcePlayerRecords          = "/players/{accountId}/records"
        case ResourcePlayerCounts           = "/players/{accountId}/counts"
        case ResourcePlayerHistogram        = "/players/{accountId}/historgrams/{field}"
        case ResourcePlayerWardmap          = "/players/{accountId}/wardmap"
        case ResourcePlayerWordcloud        = "/players/{accountId}/wordcloud"
        case ResourcePlayerRatingHistory    = "/players/{accountId}/ratings"
        case ResourcePlayerHeroRankings     = "/players/{accountId}/rankings"
        
        //Global
        case ResourceGlobalStats = "/distributions"
        
        //Rankings
        case ResourceRankingsHero = "/rankings"
        
        //Benchmarks
        case ResourceBenchmarkHero = "/benchmarks"
    }

}
