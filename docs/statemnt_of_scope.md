Overview:
The database is designed to support the operations of a climate action organization. 
It will manage customer interactions (sales), newsletter distribution, and serve as a central system for maintaining consistent data on individuals 
(e.g., names, emails, addresses) used across different functional areas. 
By streamlining data storage and retrieval, the database will support reporting and updates (e.g., membership changes, name updates) while minimizing redundancy.

Key Points:

Single Source of Truth: Common fields like names, email addresses, and physical addresses will be stored in dedicated tables (e.g., a centralized "Person" or "Customer" entity) to prevent data anomalies and simplify updates.
Sales Document Normalization: Initial sample sales documents often mix product details, customer data, and order specifics in a single record. 
We have resolved these by decomposing the information into separate entities (Customer, Product, Order, OrderItem) to meet 1NF and 3NF requirements.
Scalability: The design anticipates future extensions (donations, events, campaigns) while keeping the current functional areas isolated and normalized for clarity and maintainability.