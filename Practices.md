# Practices

Our overall process is captured in a [Mermaid diagram](https://www.mermaidchart.com/app/projects/d82ce836-996e-42c5-b7fe-31ec1cdd1040/diagrams/136db916-9de1-49de-b0ae-971f5d0808b9/version/v0.1/edit).

![Project Process](https://www.mermaidchart.com/raw/136db916-9de1-49de-b0ae-971f5d0808b9?theme=light&version=v0.1&format=svg)

We've defined terms in each phase below.

## Discover


## Design

## Develop


### Process components

#### Cycles

Development happens in cycles. Different teams use different lengths, names, and ceremonies around these cycles. But all teams chunk their work into discrete periods of time.

* Planning - the engineering team determines the desired work for the cycle.
* Development - the engineering team implements the work, with the PM providing feedback on issues.
* Retro - the product trio (PED) reviews the work and adjusts the plan for the next cycle.
* Update - the project DRI posts updates.

#### Issues
PMs aren't just involved at the macro level; we are involved at the individual issue level to provide guidance where appropriate.

* Issue - PMs should write excellent issues. We aren't the only people creating issues, but ours should follow [a8c issue guidelines](https://updateomattic.wordpress.com/2025/05/29/how-we-work-writing-issues-with-ai/).
* Pull request - PMs don't review every PR, but we should be aware of them as they are created. Ideally PMs have a test environment where we can review and provide feedback.
* QA and Code Review - are necessary steps where PMs can contribute, but they fall more directly on the engineering team.

#### Escape Hatch

As part of being [unafraid](./Expectations#unafraid), we should be prepared to stop a project if it isn't going well. Here are questions anyone on the project can ask at the end of each cycle:

1. Do we have high confidence that it will meaningfully impact our primary metric?
2. Is our primary metric still relevant to current business priorities and user needs?
3. Does the project still solve the identified job to be done?
4. Has the scope expanded beyond the expected benefit, and can we still deliver value within our original parameters?
5. Have any critical assumptions or external dependencies fundamentally changed since project initiation?
6. Are the key stakeholders still aligned and committed to this project's success?
7. If we were starting this project today with our current knowledge, would we still choose to pursue it?

If the answer to any of these questions is no, we should pause future work on the project and reassess. It may mean pivoting, it may mean stopping the project and moving on. 

To avoid the sunk cost fallacy, we need to focus on the future costs of the project, not the work that has already been completed.


### Linear projects
Every initiative should be represented by a project in Linear. All projects at VIP should use the [VIP Project Template](https://linear.app/a8c/settings/teams/VIP/templates/project/349cba1d-ba01-4114-90d4-1851dd31a89c/edit). This template adds to the a8c default to enable clear communication across stakeholders.

Additionally all projects should appear in the VIP Updates [pulse view](https://linear.app/a8c/pulse/view/vip-updates-8c11d4b5e16f). The template project has the correct `VIP > Updates` label, but you should double check to make sure it is in the view.

#### Milestones

All VIP projects will have at least four milestones:

* Preflight - steps that we take before every project to assure success.
* Alpha - when the project is ready for internal testing.
* Beta - when the project is ready for external testing.
* General Availability (GA) - when the project will be available to all eligible customers.
* Launch - when the project will be promoted.

Product Managers are expected to keep the dates associated with these milestones accurate throughout the project. Projects can have additional milestones as appropriate.

#### Issues
Every project is different, but some elements are required. The template includes the following default issues:
* Preflight
    * Draft a&c wide-view update - start with the end in mind with this draft.
    * Define primary metric - if we can't identify a metric that will change, it isn't a good project.
    * Choose ideal champion customers - every project should be used by customers before it is released. If we can't get them on the record about the project, it isn't a good project.
* Escape hatch - there are two [escape hatch](#escape-hatch) tasks, but we should be answering these questions throughout the project.
* Alpha
    * Present Alpha at VIP Townhall - every project should be presented to the whole company when it is ready for them to test.
    * Create documentation - collaboration with documentation should begin as soon as the feature is available for internal testing.
* Beta
    * Gather customer champion quote - projects without customer quotes should not proceed to general availability.
    * Confirm relevant actions are tracked - if we can't track the primary metric, we can't judge success.
* General Availability (GA)
    * Update a&c wide-view draft for publication - when a project is generally available, we can announce it to all of a8c.

#### Updates
Linear prompts the project lead every week to post a project update. The a8c template [lives here](https://fieldguide.automattic.com/linear/linear-vs-p2/).

If any milestone dates have changed, that should be specifically noted in the update.

All projects should be included in the [VIP Updates pulse view](https://linear.app/a8c/pulse/view/vip-updates-8c11d4b5e16f). If you find that your project is missing, please add the `VIP > Updates` label.

##### Importance of quality updates

The Linear updates you provide are the primary source of project information that stakeholders (Sales, Marketing, CS, and the ELT) rely on. To ensure effective communication:

* Write your updates with external stakeholders in mind, not just for your immediate team.
* Include concrete dates and flag any changes to those dates prominently.
* Use clear, non-technical language.
* Link to relevant resources such as demo recordings, documentation, and customer-facing materials.

Remember that many teams plan their work based on your updates. High-quality, timely updates in Linear eliminate the need for additional reporting channels and enable stakeholders to make informed decisions.

#### Stakeholder awareness

As a PM, you should:

* Direct stakeholders to the VIP Updates pulse view when they request project information.
* Mention relevant milestone dates in cross-functional meetings and refer back to your Linear updates.
* Ensure stakeholders know how to access and interpret your updates.
* Ask for feedback on the quality and usefulness of your updates from stakeholder teams.

Consistent, high-quality updates build trust with stakeholders and reduce the need for ad-hoc status requests.

### Demos

Demos are essential for building organizational alignment and excitement around new features.

#### VIP Town Hall Demos
- All projects must be presented at VIP Town Hall at least once during Alpha phase.
- PMs are responsible for preparing these demos. We will often deliver them, but we should look to give teammates an opportunity to present as well.
- Demos should follow this format:
  * Problem statement and customer impact (2 min).
  * Feature demonstration (6 min).
  * Roadmap and next steps (2 min).
- Demos should be clipped out of the Town Hall recording and posted as part of that week's project update.

#### Demo Preparation Guidelines
- Create a dedicated test environment with realistic customer data.
- Script the demo flow to highlight the core value proposition.
- Prepare backup screenshots in case of technical issues.
- Practice with the product trio before presenting more widely.

## Deliver

### Preparing the a8c-wide-view update

Is how we communicate the general availability of a project to the broader company. Each PM is responsible for creating the update. PMs should place their update in the working document for the a8c-wide-view update. 

This document is shared [#a8c-wide-view](https://a8c.slack.com/archives/CR4H79333) channel on Slack. PMs should place their draft updates by the 2nd of the month.

The product team lead at VIP should review and edit these updates by the 3rd of the month. They are accountable for the final draft.


### Adoption Reporting

We use the TARS framework for adopition reporting. Each project has an outcome metric defined at the start of the project.
 
TARS = Active Target Users → Active Adopted Users → Active Retained Users → Active Satisfied Users (% of users that were satisfied from active retained users)

The outcome metric becomes the adopted metric from the framework. While this framework specifices "users" we may be more interested in customers that have adopted a feature.

Before a feature launches, reporting on the target audience and adoption should be in place. Ideally a [Pendo dashboard](https://app.pendo.io/s/5636252415164416/dashboards/BGJVhKP8PJCcFqloC22iLt7GoC0) is created, but that depends on the availability of the data.

Each month the PM will produce a P2 post [like these](https://vipproductp2.wordpress.com/tag/adoption-data/) to detail adoption of the new feature. These reports will continue for at least six months after general availability. They may continue longer if signficant work is being done.

Satisfaction reporting should be conducted once a quarter. In the past we have used [Custer Effort Score](https://vipproductp2.wordpress.com/2024/10/03/using-customer-effort-score-ces/) and Net Promoter Score (NPS). Our CES experiment had mixed results, and conducting an NPS score on each feature would be cumbersome. This handbook will be updated as the team experiments with additional methods.

The TARS framework does not provide indepth insight into what to do next. It is useful for identifying issues in the product and where those issues live. If you have high retention and low adoption that points to a particular set of questions. 

P2 posts should at least highlight these questions. Ideally you have already done the reseach to have a testable hypothesis and plans for how to implement changes. If not, a clear timeline for that and a follow-up comment should be scheduled.

### Process components

#### Monitor

Adoption Reporting is the primary tool we use to monitor a project. PMs should also monitior more granualr metrics to understand the health of the product. This should include monitioring error reporting.
