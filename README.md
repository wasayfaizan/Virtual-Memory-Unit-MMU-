<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>
    <h1>Virtual Memory Unit Project</h1>
    <h2>Description</h2>
    <p>
        This project consists of designing and implementing a Memory Management Unit (MMU) that translates logical addresses to physical addresses for a virtual address space of size 2<sup>16</sup> = 65,536 bytes. The MMU reads logical addresses from a file, uses a Translation Lookaside Buffer (TLB) and a page table to translate each logical address to its corresponding physical address, and outputs the value of the byte stored at the translated physical address.
    </p>
    
    
  <h2>Learning Goals</h2>
    <p>
        The primary learning goals of this project include:
    </p>
    <ul>
        <li>Understanding the steps involved in translating logical to physical addresses.</li>
        <li>Implementing demand paging to resolve page faults.</li>
        <li>Managing a TLB and implementing a page-replacement algorithm.</li>
    </ul>
    
  <h2>Specifications</h2>
    <p>
        The program reads a file containing several 32-bit integer numbers representing logical addresses. Only the low-order 16 bits of each logical address are considered, divided into an 8-bit page number and an 8-bit page offset.
    </p>
    <p>
        The program uses a page table with 2<sup>8</sup> entries and a TLB with 16 entries.
    </p>
    <ul>
        <li>Page size: 2<sup>8</sup> bytes</li>
        <li>Frame size: 2<sup>8</sup> bytes</li>
        <li>Number of frames: 256</li>
        <li>Physical memory size: 65,536 bytes (256 frames × 256-byte frame size)</li>
    </ul>
    <h2>Implementation Phases</h2>
    <h3>Phase 1: Address Translation</h3>
    <p>
        The program translates logical to physical addresses using a TLB and page table. Page faults are resolved using demand paging, where pages are read from the BACKING_STORE file and stored in physical memory.
    </p>
    <h3>Phase 2: Page Replacement</h3>
    <p>
        This phase assumes a smaller physical address space with 128 page frames. The program implements a page-replacement policy using LRU to resolve page faults when there is no free memory.
    </p>
</body>
</html>
