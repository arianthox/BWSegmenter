# BWSegmenter

## Overview

Legacy segmentation-stage service intended to transform cleaned brainwave streams into deterministic analysis windows.

## Scope in BrainWaves

- In-scope conceptually (maps to segmenter stage)
- Current code appears mostly service scaffolding; full stream wiring may be incomplete

## Tech Stack

- Java 11
- Spring Boot 2.2.x
- Spring Cloud (Eureka client)
- Akka stream dependencies
- Gradle

## Build

```bash
./gradlew clean build
```

## Run

```bash
./gradlew bootRun
```

Standalone profile:

```bash
./gradlew runStandalone
```

## Key Configuration / Integration

- Config file: `src/main/resources/application.yml`
- Important keys:
  - `server.port`
  - `spring.application.name`
  - `eureka.client.service-url.defaultZone`

## Status / Notes

- Target mapping in new architecture: `brainwaves.cleaned.v1 -> brainwaves.segmented.v1`.