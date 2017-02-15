//
//  CompanyDatabase.swift
//  Career Fair
//
//  Created by Rohan Rk on 2/12/17.
//  Copyright © 2017 Rohan Rk. All rights reserved.
//

import Foundation
class CompanyDatabase {
    
    private var companies: [Company] = []
    
    init() {
        populateDatabase()
    }
    
    var numCompanies: Int {
        return companies.count
    }
    
    func addCompany(company : Company) {
        companies.append(company)
    }
    
    func company(atIndex index: Int) -> Company {
        return companies[index]
    }
    
    func populateDatabase() {
        addCompany(company: Company(name: "Center for Civic Innovation", description: "The mission of the Center for Civic Innovation is to push Atlanta to be a smart, equitable, and engaged city by investing in community-driven ideas, supporting social enterprises, and engaging people in dialogue and action. We do this by supporting and investing in people and organizations who are already on the ground with products or services that make the public sector more effective, innovative, and participatory. We host programs for community based social entrepreneurs at all stages, but we focus our investments on early stage, untested projects.", url: NSURL(string: "http://www.civicatlanta.org/")!, table: 1))
        
        addCompany(company: Company(name: "Plywood People", description: "Atlanta is marked by the legacies of the human rights activism of Martin Luther King Jr. and the innovation driven by the largest brands in the world. We are extending this history by bringing together activists, creatives, and entrepreneurs to address needs in revolutionary ways. Plywood People has instigated and contributed to over 250 new start-ups who are creating new solutions to old problems.", url: NSURL(string: "http://plywoodpeople.com/")!, table: 2))
        
        addCompany(company: Company(name: "Peace Corps", description: "The Peace Corps is a service opportunity for motivated changemakers to immerse themselves in a community abroad, working side by side with local leaders to tackle the most pressing challenges of our generation.", url: NSURL(string: "https://www.peacecorps.gov/")!, table: 3))
        
        addCompany(company: Company(name: "Marines", description: "The United States Marine Corps (USMC) is a branch of the United States Armed Forces responsible for providing power projection,[9] using the mobility of the United States Navy, by Congressional mandate, to deliver rapidly, combined-arms task forces on land, at sea, and in the air. The U.S. Marine Corps is one of the four armed service branches in the U.S. Department of Defense (DoD) and one of the seven uniformed services of the United States.", url: NSURL(string: "http://www.marines.mil/")!, table: 4))
        
        addCompany(company: Company(name: "AISEC", description: "Every year, we facilitate tens of thousands of life-changing experiences for students and recent graduates. Ranging from professional internships, volunteering experiences, or being a member of AIESEC on campus, we offer young people a chance to discover their leadership potential. Through our extensive partnerships ranging from multinationals to social enterprises, we offer young people the gain valuable skills, networks and competencies for future success.", url: NSURL(string: "http://aiesecus.org/students")!, table: 5))
        
        addCompany(company: Company(name: "Cobb County", description: "Cobb County is the 2nd largest school system in GA with over 112,000 students in 114 schools. Example of Cobb in the news: a headline on Feb 9th reported that one of the Cobb County schools will host a Valentine’s dance for 800 special needs students.", url: NSURL(string: "http://www.cobbk12.org/")!, table: 6))
        
        addCompany(company: Company(name: "Fulton Schools", description: "Founded in 1871, the Fulton County School System is one of the oldest and largest school districts in Georgia. With a focus on student achievement and a commitment to continual improvement, Fulton has earned a reputation as a premier school system. This long history of excellence is evidenced by the many state and national honors bestowed on Fulton's schools, staff and students.", url: NSURL(string:"http://www.fultonschools.org/en")!, table: 7))
        
        addCompany(company: Company(name: "Teach for America", description: "Employees start in low-income classrooms, where the stakes are highest. They become teachers who can dramatically expand students’ opportunities. These teachers gain a better understanding of the problems and the opportunities in our education system and use those lessons to define their path forward. Many stay in the classroom. Others leave. Both paths matter because to set things right, we need leaders in all areas of education and social justice united in a vision that one day, all kids will have access to an excellent education.", url: NSURL(string: "https://www.teachforamerica.org")!, table: 8))
        
        addCompany(company: Company(name: "Lite House", description: "Lite House was established to create community enrichment centers that serve families by providing access to technology, academic support services and extracurricular activities that add to the quality of life for all community members. We currently provide homework assistance, recreational activities and mentoring. In an effort to expand services and support families, we are working to create an exemplary after school enrichment program for youths. Our goal is to create programs that will help ensure that our youths excel academically, are exposed to the arts, cultivate cultural appreciation and enjoy an active outdoor experience. To this creative mix, we will add personal enrichment programs for adults.", url: NSURL(string: "http://www.litehousekids.org/")!, table: 9))
        
        addCompany(company: Company(name: "Camp Twin Lakes", description: "For nearly 25 years, Camp Twin Lakes has provided life-changing camp experiences to thousands of Georgia's children with serious illnesses, disabilities, and other life challenges. Camp Twin Lakes provides week-long summer camps and year-round weekend retreats at three fully-accessible and medically-supportive campsites, daycamps, and through hospital-based Camp-To-Go programs.", url: NSURL(string: "http://www.camptwinlakes.org/")!, table: 10))
        
        addCompany(company: Company(name: "Rubicon Global", description: "Rubicon Global was founded on a bold idea: to disrupt the waste and recycling industry and create less expensive, more sustainable solutions. We reduce waste and recycling costs for our customers, empower small businesses, and increase landfill diversion. Our goal is to create more sustainable solutions for businesses and the planet.", url: NSURL(string: "https://www.rubiconglobal.com/")!, table: 11))
        
        // addCompany(company: Company(name: "TBD", description: "", url: NSURL(string: "No url exists")!,table: 12))
        
        addCompany(company: Company(name: "Ardens Garden", description: "Arden’s Garden is Atlanta’s premier fresh juice manufacturer. The way Arden’s Garden makes its juice reflects its beliefs about health. All of its fresh juices and smoothies are made from over 20 different fruits and vegetables, nothing else.", url: NSURL(string: "https://www.ardensgarden.com/")!, table: 13))
        
        addCompany(company: Company(name: "Cypress", description: "We believe that testing web applications is one of the hardest challenges for web developers today. While there's been an explosion of JavaScript frameworks that help with client-side architecture, there's a huge void of quality testing tools. It's not uncommon to spend more time getting tests to pass than it took to write code for the feature. Cypress simplifies the effort and complexity of writing and debugging integration tests.", url: NSURL(string: "cypress.io")!, table: 14))
        
        addCompany(company: Company(name: "Metro Atlanta Chamber", description: "As a job creation engine, we are committed to growing the metro region through the recruitment, retention, and expansion of businesses ranging from startups to Fortune 500 companies. We achieve this through our dedication to the globally competitive industries that make up our strong ecosystem. Maintaining a business-friendly environment is vital to our success. We act to enable sustained economic growth by promoting sound public policy and quality of life initiatives. From the arts to sports, we understand that a healthy business climate is derived from a well-balanced community.", url: NSURL(string: "http://www.metroatlantachamber.com/")!, table: 15))
        
        addCompany(company: Company(name: "Aquaplanet LLC", description: "AQUAPONICS is coming around, in a big way. Are you ready? We represent some of the world's leading innovators in this technology. We design, build and communicate to fit the needs of investors and communities. This is the technology that will reshape agriculture and social enterprise as we know it.", url: NSURL(string: "http://www.aquaplanetonline.com/")!, table: 16))
        
        addCompany(company: Company(name: "Good Measure Meals", description: "100% of the net proceeds from the sale of Good Measure Meals™ go directly to Open Hand to support medically-appropriate meals and nutrition education for those in need. Community service is the underlying current driving our relationship with customers. Your healthy choices support our cause in building a healthier community. For every meal that you enjoy, a vulnerable individual will receive wellness support to improve their quality of health. Learn more at www.openhandatlanta.org. (GMM is not currently hiring)", url: NSURL(string: "https://www.goodmeasuremeals.com/")!, table: 17))
        
        addCompany(company: Company(name: "MBA Net Impact Chapter", description: "They are tabling for their event on March 4th which is a one-day conference for those who are interested and passionate about making a lasting social and environmental impact. There will be inspiring keynote speakers, panel discussions with sustainability leaders, and plenty of opportunities to network with other Net Impacters!", url: NSURL(string: "https://www.facebook.com/events/241394689645662/")!, table: 18))
        
    }
}
