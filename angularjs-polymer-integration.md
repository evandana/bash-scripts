## Prerequisite Reading

- [How well does each JS framework support custom elements?](https://custom-elements-everywhere.com/)


## Wrapper Options

| Possibility? | Tool & Link | Owner | Description | 
| :----------: | ----------: | :---: | :---------- |
| **Yes** | [Predix Components Angular Integration](https://www.predix-ui.com/#/develop/frameworks-angular) | Predix UI Team - Dan Harrelson | Integration learnings and steps |
| **Yes** | [angular-custom-elements](https://github.com/robdodson/angular-custom-elements) | [Rob Dodson](https://github.com/robdodson) | Angular 1.x directive to hold all yr Custom Element bindings together; last updated 01/2017; "This is still experimental so use at your own risk" |
| **Yes** | [ng-polymer-elements](https://gabiaxel.github.io/ng-polymer-elements/) | gabiaxel | AngularJS two-way binding for Polymer Web Components, Out of the box support for Iron, Paper, Gold and Google elements |
| **Yes** | [BMS: NG-PL Wrapper](https://github.build.ge.com/BM/analysis-uApp/search?utf8=%E2%9C%93&q=extension-wrapper&type=) | GE's Brilliant Manufacturing | AngularJS-Polymer wrapper |
| **Yes** | [Custom Elements in AngularJS](https://steele.blue/custom-elements-angularjs) (& [Alt option](https://codepen.io/manuelro/pen/bNvoYa)) | Angular | Native Angular integration |
| **Yes** | [AngularJS Interop](https://github.com/webcomponents/angular-interop/tree/master/angularjs/src) | Webcomponents | Integration Example | 
| **No**: Req. Angular 2 | ~[Native Integration Guide](https://www.sitepen.com/blog/2017/09/14/using-web-components-with-angular/)~ | Angular | Native Angular integration | 


## Upgrading

- Official Angular Guide
    > [Read full article](https://angular.io/guide/upgrade)
    > 
    > **Using Component Directives** - In Angular, components are the main primitive from which user interfaces are built. You define the different portions of the UI as components and compose them into a full user experience.
    > 
    > You can also do this in AngularJS, using component directives. These are directives that define their own templates, controllers, and input/output bindings - the same things that Angular components define. Applications built with component directives are much easier to migrate to Angular than applications built with lower-level features like ng-controller, ng-include, and scope inheritance.
    > 
    > To be Angular compatible, an AngularJS component directive should configure these attributes... 
    > 
    > Component directives may also use the following attributes...
    > 
    > Component directives should not use the following attributes...
- How and Why to Upgrade a Large App to Angular 5
    > [Read full article](https://medium.com/contentsquare-engineering-blog/angularjs-to-angular5-upgrading-a-large-application-7e6fbf70bafa)
    > 
    > There are two likely cases for an application to be under AngularJS in 2018. Either the application is rarely used and will be abandoned one day in which case no migration is needed. Or, the application is wide, with a major impact on the business and undergoes a lot of interventions on a daily basis and upgrading to another framework is obviously not the priority.
- To Upgrade or Not?
    > [Read full article](https://www.troyweb.com/blog-list/2018/3/30/its-time-to-begin-plans-for-upgrading-your-angularjs-apps-to-angular)
    > 
    > July 1, 2018 - June 30, 2021: Long Term Support period
    > 
    > The Angular team assured developers that “all AngularJS applications that work now, will continue to work in the future.” However, since bug fixes will seemingly cease in 3.5 years, one can assume applications running on the framework will be at risk for malfunction past that point. Therefore, if developers and product owners want to ensure longevity of their applications, it is best to utilize the Long Term Support period to either migrate from AngularJS to Angular or rewrite your application.
    > 
    > To migrate or rewrite, that is the question…
    > 
    > A complete rewrite may be a great option if you have the time and resources to do it. It can often be more cost-effective than migration, and it allows you to use best practices as recommended for Angular. But, a rewrite doesn’t work so well if your application needs to constantly have new features released in production, or if it’s a large application that would take years to rewrite. If your application falls into one of those categories than you will need to plan for a migration.
- Don't Rush to Upgrade from AngularJS to Angular
    > [Read full article](https://jaxenter.com/original-angular-kicking-2018-141176.html)
    > 
    > Angular 2.0 introduced a massive change in the structure as compared to version 1.0. The architecture of Angular v1 is based on the Model-View-Controller pattern (MVC) whereas the one of Angular v2 is based on services and controllers. Version 4.0 is more of an upgrade to 2.0. It contains a lot of performance improvements, new features and has also reduced the code file size.
    > 
    > If an AngularJS project is near its end, it’s probably not necessary to migrate to Angular. However, if it’s a long-running project and it’s likely that it will continue to grow in the future, it might be a good idea to consider migrating to the latest version of Angular. Rewriting all project modules at once just for the sake of using the newest frameworks is a bad idea. It’s time-consuming and irritating.
    > ...
    > In my opinion, if you currently have an original Angular 1 project, you are safe for now. Even when it is eventually depreciated, there are enough users from the open source community who will be engaged enough to help it live on. But don’t take my word for it! Alex Kras explained that it’s still okay to use Angular 1 in 2017.
