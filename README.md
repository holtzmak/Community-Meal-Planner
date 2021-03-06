![Community of Meal Planners Forums](https://user-images.githubusercontent.com/32527219/114757123-b36d6900-9d18-11eb-8596-3c244c4f97a2.png)

![Build and integration tests](https://github.com/holtzmak/Community-Meal-Planner-Forum/actions/workflows/flutter-build-and-integration-test.yml/badge.svg)
![Unit tests](https://github.com/holtzmak/Community-Meal-Planner-Forum/actions/workflows/flutter-unit-test.yml/badge.svg)
![Formatting and Dart analysis](https://github.com/holtzmak/Community-Meal-Planner-Forum/actions/workflows/flutter-formatting-and-dart-analysis.yml/badge.svg)

A [Flutter](https://flutter.dev/) and [Firebase](https://firebase.google.com/) forum application to support community discussion for meal planning, sustainable practices, development, and education.

Got questions? Use the [Discussions](https://github.com/holtzmak/Community-Meal-Planner-Forum/discussions) tab and post a question or suggestion there.

**This project's main source of process-related documentation is the [Wiki](https://github.com/holtzmak/Community-Meal-Planner-Forum/wiki).** See the Wiki for the following information and more:
1. Project documentation as set out by the post-secondary course
2. Project presentation and progress slides
3. Application architecture and software design documents

Further documentation and diagrams are available in the [`documentation` folder in the codebase](https://github.com/holtzmak/Community-Meal-Planner-Forum/tree/main/documentation).

***

## Installation and Use

1. Install `Git`, the version control system used by GitHub. I have a [repository dedicated to these instructions](https://github.com/holtzmak/Git-Pre-Commit-and-IntelliJ-Settings)!
2. Install `Flutter`, the application framework. Google has [very thorough instructions here](https://flutter.dev/docs/get-started/install).
3. Install a Interactive Development Environment (IDE). This is like Microsoft Word, but for programming. I use [Android Studio](https://developer.android.com/studio).
4. Clone this project using `Git` into a directory of your choice.

`git clone https://github.com/holtzmak/Community-Meal-Planner-Forum.git`

5. Start your IDE, and follow the set up wizard. 
6. Open the Community Meal Planner Forum as an `existing project`.

You're now ready to play with the source code! If you're interested in running the app on an emulated, or real device:
1. In Android Studio, you can make an emulated Android device using [these instructions](https://developer.android.com/studio/run/emulator)
2. *ONLY* if you have an Apple device can you use an iOS simulator. You need [XCode](https://developer.apple.com/xcode/) installed, too. Once you do, [try these instructions](https://stackoverflow.com/a/50865726)
3. Finally, you can also deploy the app on the web. [Use these instructions](https://flutter.dev/docs/get-started/web) by Google to do so.

## Project Abstract

This application is intended to support the following sub-goals of the [UN's 17 Goal for Sustainable Development](https://www.un.org/sustainabledevelopment/). These sub-goals are part of [Goal 12: Ensure sustainable consumption and production patterns](https://www.un.org/sustainabledevelopment/sustainable-consumption-production/):
1. _12.7_ Promote public procurement practices that are sustainable, in accordance with national policies and priorities
1. _12.8_ By 2030, ensure that people everywhere have the relevant information and awareness for sustainable development and lifestyles in harmony with nature
1. _12.A_ Support developing countries to strengthen their scientific and technological capacity to move towards more sustainable patterns of consumption and production
1. _12.B_ Develop and implement tools to monitor sustainable development impacts for sustainable tourism that creates jobs and promotes local culture and products

The meal planning market consists of convenience tools rather than educational tools, limiting what platforms and content members of the community have available. There exists side platforms and content that only those “in the know” access and share. These two situations limit the demand for education and consumption practice change because there is no collective place for members to voice concerns and ask for change.

This project aims to provide members of the meal planning community with a space (forum) for relevant discussion and critique of recipes, practices, and tools that can be received by meal planning companies/tool developers so as to incite community-led change in the status quo.

## Project Documentation

### Project Management Documents

1. Project Proposal ([scrum slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/Community%20Research%20%26%20Understanding.pdf)) (Feburary 3, 2021)
2. Community Research & Understanding ([scrum slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/Community%20Research%20%26%20Understanding.pdf)) (February 3, 2021)
* [Technology Steward Activity](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/community%20research%20%26%20understanding/Technology%20Steward%20Activity.pdf). An activity for self-understanding the problem being approached.
* [Technology Configuration Inventory](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/community%20research%20%26%20understanding/Technology%20Configuration%20Inventory.pdf). An activity for cataloging platforms and tools already on the market.
* [Community Characteristics Orientation](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/community%20research%20%26%20understanding/Community%20Characteristics%20Orientation.pdf). An activity for self-understanding what it is consumers want.
3. Drafting an Emerging Picture & Project Management ([scrum slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/Project%20Management.pdf)) (February 10, 2021)
* [Drafting an emerging picture document](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/project%20management/Drafting%20an%20emerging%20picture.pdf). An activity to understand how the application should benefit the community orientation.
* [Business Case](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/project%20management/Business%20Case.pdf). An activity for grasping what the application should do.
* [Stakeholder Analysis](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/project%20management/Stakeholder%20Analysis.pdf). An activity for understanding who the customers are.
* [Project Scope Statement](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/project%20management/Project%20Scope%20Statement.pdf). An activity to define what work the project consists of.
* [Project Requirements](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/project%20management/Project%20Requirements.pdf). An activity to define what the project shall do.

### Software Design Documents

1. Software Design ([scrum slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/Software%20Design.pdf)) (February 22, 2021)
* [Lo-fi GUI Prototypes](https://raw.githubusercontent.com/holtzmak/Community-Meal-Planner-Forum/db4d818b13afb5196ab916fee6d15c0b69cd18a3/documentation/software%20design/Lo-Fi%20GUI%20Prototypes.svg). An activity for quickly drafting up the general appearance of the application.
* [Mid-fi GUI Prototype](https://xd.adobe.com/view/262b07e0-7a00-4e45-a4ed-4d4036fc88d5-7378/). An activity for previewing the appearance and some interaction of the application.
> See also the [PDF version](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/gui%20prototypes/Mid-Fi%20GUI%20Prototype%20v1.pdf) and a [recording of the mid-fi prototype](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/gui%20prototypes/Mid-Fi%20Prototype%20Recording%20v1.mp4)
* [Application Workflow Diagrams](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/Application%20Workflow%20Diagrams.pdf). Diagrams identifying the different application routes between screens.
* [Persona (Roles) Diagram](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/client-server-database%20architecture/Persona%20(Roles)%20Diagram.pdf). A diagram for identifying the workflow differences of the persons (roles) using the application.
* [Context Diagram](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/client-server-database%20architecture/Context%20Diagram.pdf). A diagram for identifying where the application fits among external software systems.
* [Container Diagram](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/client-server-database%20architecture/Container%20Diagram.pdf). A diagram for identifying the different application interfaces (mobile & web) among external software systems.
* [Component Diagram](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/client-server-database%20architecture/Component%20Diagram.pdf). A diagram for offering insight to the internal software design of the application (mobile & web).
* [Database Conceptual Data Models](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/client-server-database%20architecture/Database%20Conceptual%20Data%20Models.pdf). A diagram identifying the collections and documents of the database (NoSQL database).

### Progress Documents

1. MVP 1 Progress (as per project scope document above)
* [Progress status report (scrum) slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/MVP%201%20Progress%20Status%20Report.pdf) (March 10, 2021)
* [Progress vlog slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/MVP%201%20Progress%20Vlog.pdf) (March 17, 2021)
* [Progress vlog video](https://youtu.be/QH4ZkjJSelE) (March 17, 2021)
2. MVP 2 Progress (as per project scope document above)
* [Progress status report (scrum) slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/scrum%20slides/MVP%202%20Progress%20Status%20Report.pdf) (March 24, 2021)
* [Administration Process Design document](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/project%20management/Administration%20Process%20Design.pdf). An activity for drafting an emerging picture of leadership in the application.
* [Mid-fi GUI Prototype Updated](https://xd.adobe.com/view/262b07e0-7a00-4e45-a4ed-4d4036fc88d5-7378/). Added some leadership process pages.
> See also the updated [PDF version](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/gui%20prototypes/Mid-Fi%20GUI%20Prototype%20v2.pdf) and updated [recording of the mid-fi prototype](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/software%20design/gui%20prototypes/Mid-Fi%20Prototype%20Recording%20v2.mp4)

### Project Closing Documents

1. [Project Report slides](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/closing/Final%20Presentation%20and%20Project%20Closing.pdf) (April 14, 2021)
2. [Project Report and Lessons Learned](https://github.com/holtzmak/Community-Meal-Planner-Forum/blob/main/documentation/closing/Project%20Report%20and%20Lessons%20Learned.pdf) (April 14, 2021)
3. [Project Commercial Video](https://www.youtube.com/watch?v=sy4u1aD0vtk&feature=youtu.be) (April 14, 2021)

## A Special Thank You

I would like to thank all the people who supported this project from start to finish! Thank you Dr. Maciag for your valuable feedback and instruction during the course of the project. Thank you to my family, who put up with all my strange questions and requests. Finally, thank you to my fellow students who made suggestions and gave feedback on the project.

This project would not have been as good without all your help! <3

***

## Legal Notices

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).

![license](https://licensebuttons.net/l/by-sa/4.0/88x31.png)
