<h1> DL-TF Project</h1>
This project holds all required code for the given task

<h2>Assumptions</h2>

1. Terraform State-File should be stored in a Bucket
2. Each env has a separate cloud account / project and different bucket for the state-file
3. Complete isolation is required between companies and between envs in each company


<h2>Important Decisions</h2>

<h4>Using Folders rather than Workspaces</h4>

1. It will be easier to make *specific changes* to one env without having to change all of them.
for exmaple, dev environment might have some infrastructure which is unique to that env and should not ever be deployed on Prod.

2. May be used more easily if a GitOps approach is to be taken.
for example, a change merged to the **dev** folder (env) will automatically trigger a deployment for its corresponding environment.

3. Workspaces are ???


<h4>Separating Modules and Resources</h4>
Since complete isolation between environments and companies is required, and each may have different configs, settings and values, I've created generic resources under the **modules** directory. These resources will be used by all envs and deployments.
</br>
**Pros:**
  1. Each env deployment will only provide the required values and will not implement any code changes
  
  2. Easy to hcave the deployment run with different values in each env (easy to make changes)


**Cons:**
  1. If a major deviation in configuration will be required, it might force a refactor of generic deployments into multi-part deployments (i.e, node_pull, spot_node_pull).