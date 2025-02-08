### Training
- gpt is mainly implemented using pytorch

### Text Generation Model
- chat api is taking multiple messages as input (including previous conversations)
- streaming / non streaming
- tokens are not 1:1 mapping with English words
- chat api may respond differently each time for the same query, but you can set a seed field to avoid it with best efforts
- openai has a py lib to calculate token count before you send it to the server

### Function Calling
- the chat completion api doesn't call the function, it returns json response which you can use to call a function
- gpt has been trained to decide when a function should be called (depending on the input) and to respond with JSON that adheres to the function signature
- to call a function
  - pass in user input and a list of functions to the chat model
  - the model will choose to call one or more functions
  - use the model response to call the function(s), and pass the responses back to the model
  - the model summarizes the function call results and return them to the user
  - better to build a user confirmation flow before taking real actions

### Embeddings
- embeddings can be used to do search/clustering/recommendations/anomaly detection/diversity measurement/classification
- embedding models only provide embeddings, not other fancier functionalities like search/clustering etc

### Fine-tuning
- compared to prompt, fine-tuning provides
  - higher quality
  - ability to train on more examples
  - cost saving due to shorter prompts
  - lower latency requests
  - dataset containing sample conversations (in the format defined by chat completion api) is needed for fine tuning
  - 50 ~ 100 training example is sufficient to give noticable improvements of the model
  - dataset file size limit is 1GB (you are not expected to use a dataset of such size to see improvements)

### Eval
- https://github.com/openai/evals openai's own eval lib
- for app builders, sampling over both base model & fine tuned model would provide a sense of fine tune quality
 
### Prompt (Prompt Engineering / Prompt Chaining)
- include instructions / a few examples to demonstrate how to complete a task: few-shot learning
- prompt engineering tactics: https://platform.openai.com/docs/guides/prompt-engineering/strategy-write-clear-instructions
  - write clear instructions, e.g who was president -> who was president of US during ...
  - ask the model to adopt a persona, e.g thru system message
  - use delimiters to indicate distinct parts of the input
  - etc

### Embedding & Retrieval
- 

### Thoughts
- GPT can serve as a program/service, e.g instead of sending normal formatted request to the service, you send message to GPT and it serves as the service, e.g you can instruct GPT so that it serves as a state machine; providing a way so that our services talk to each other thru natual languages
- 
