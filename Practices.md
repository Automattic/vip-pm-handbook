# Practices

Our overall process is captured in a [Mermaid diagram](https://www.mermaidchart.com/app/projects/d82ce836-996e-42c5-b7fe-31ec1cdd1040/diagrams/136db916-9de1-49de-b0ae-971f5d0808b9/version/v0.1/edit).

![Project Process](https://www.mermaidchart.com/raw/136db916-9de1-49de-b0ae-971f5d0808b9?theme=light&version=v0.1&format=svg)

We've defined terms in each phase below.

## Discover
## Design

## Develop


### Process components

#### Cycles

Developement happens in cylces. Different teams use different lengths, names, and ceromonies around these cycles. But all teams chunk their work into smaller periods of time.

* Planning - the engineering team determines the desired work for the cycle.
* Development - the engineering team implements the work, with the PM providing feedback on issues.
* Retro - the product trio reviews the work and adjusts the plan for the next cycle.
* Update - the project DRI posts updates.

#### Issues
PMs aren't just involved at the macro level, we are involved at the individual issue level to provide guideance where appropriate.

* Issue - PMs should write excellent issues. We aren't the only people creating issues, but ours should follow [a8c issue guidelines](https://updateomattic.wordpress.com/2025/05/29/how-we-work-writing-issues-with-ai/).
* Pull request - PMs don't review every PR, but we should be aware of them as they are created. Ideally PMs have a test environment where we can review and provide feedback.
* QA and Code Review - are necessare steps where PMs can contribute, but they fall more directly on the engineering team.

#### Escape Hatch

As part of being [unafraid](./Expectations#unafraid), we should be prepared to stop a project if it isn't going well. Here are questions anyone on the project can ask at the end of each cycle:

1. Do we have high confidence that it will meaningfully impact our primary metric?
2. Is our primary metric still relevant to current business priorities and audience needs?
3. Has the scope expanded beyond the expected benefit, and can we still deliver value within our original parameters?
4. Have any critical assumptions or external dependencies fundamentally changed since project initiation?
5. Are the key stakeholders still aligned and committed to this project's success?
6. If we were starting this project today with our current knowledge, would we still choose to pursue it?

If the answer to any of these questions is no, we should pause future work on the project and re-access. It may mean pivioting, it may mean stopping the project and moving on. 

To avoid the sunk cost fallacy, we need to focus on the future costs of the project, not the work that has already been completed.


### Linear projects
Every initiative should be represented by a project in Linear. All projects at VIP should use the VIP Project Template. This template adds to the a8c default to enable clear communciation across stakeholders.

#### Milestones

All VIP projects will have at least four milestones:
* Preflight - steps that we take before every project to assure success.
* Alpha - when the project is ready for internal testing.
* Beta - when the project is ready for external testing.
* General Availability (GA) - when the project will be available to all eligible customers.
* Launch - when the project will be promoted.

Product Managers are expected to keep these dates accurate throughout the project. 

#### Issues
Every project is different, but some elements are required. The template includes the following default issues:
* Draft a&c wide-view update - start with the end in mind with this draft.
* Define primary metric - if we can't identify a metric that will change, it isn't a good project.
* Choose ideal champion customers - every project should be used by customers before it is released. If we can't get them on the record about the project, it isn't a good project.
* Escape hatch - there are two [escape hatch](#escape-hatch) tasks, but we should be answering these quesitons throughtout the project.
* Present Alpha at VIP Townhall - every project should be presented to the whole company when it is ready for them to test.
* Create documentation - collaboration with documentation should begin as soon the feature is availabile for internal testing.
* Gather customer champion quote - projects without customer quotes should not proceed to general availability.
* Confirm relevant actions are tracked - if we can't track the primary metric, we can't judge success.
* Update a&c wide-view draft for publication - when a project is generally available, we can announce it to all of a8c.

## Deliver
