# Distributed Counter (Sui + React)

This project is a basic end-to-end Sui dApp example that demonstrates how to build a **distributed counter** using **Sui Move** smart contracts and a **React** frontend.

Users can:
- Create a shared counter
- Increment the counter (anyone)
- Reset the counter (only the owner)

---

## 🧠 Overview

The project consists of two main parts:

### 1. Smart Contracts (Move)
- Defines a `Counter` shared object
- Anyone can increment the counter
- Only the owner can reset the value

### 2. Frontend (React)
- Connects to Sui Testnet
- Creates and interacts with Counter objects
- Uses Sui dApp Kit and PTBs (Programmable Transaction Blocks)

