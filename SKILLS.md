# OpenClaw SKILLS.md — MCP Tool Registry
Model Context Protocol (MCP) enabled. Use tools below via structured JSON calls.

## Available MCP Tools
- **plan_complex_task** → Breaks any task into steps, timelines, and sub-agents
- **save_to_memory** → Stores key/value in GitHub repo (persistent across sessions)
- **load_from_memory** → Recalls stored memory
- **github_memory_sync** → Forces full chat history → GitHub repo
- **research_web** → Simulated web research (returns current knowledge)
- **list_agents** → Shows active multi-agents (Planner, Executor, Researcher, Critic)
- **delegate_to_agent** → Hands task to specific sub-agent

## Multi-Agent Workflow (auto-used)
1. Planner Agent → creates plan
2. Researcher Agent → gathers context
3. Executor Agent → performs steps
4. Critic Agent → verifies & improves
5. Memory Agent → saves everything to repo

Just say things like:
- "plan: build a full web app"
- "remember my API keys are XYZ"
- "use multi-agent to research latest AI news"
