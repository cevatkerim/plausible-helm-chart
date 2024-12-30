# Plausible Analytics Helm Chart

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/plausible)](https://artifacthub.io/packages/search?repo=plausible)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Releases downloads](https://img.shields.io/github/downloads/cevatkerim/plausible-helm-chart/total.svg)](https://github.com/cevatkerim/plausible-helm-chart/releases)

This repository contains a Helm chart for deploying [Plausible Analytics](https://plausible.io/) on Kubernetes.

## TL;DR

```bash
helm repo add plausible https://cevatkerim.github.io/plausible-helm-chart
helm install plausible plausible/plausible -n apps
```

## Introduction

This chart bootstraps a Plausible Analytics deployment on a Kubernetes cluster using the Helm package manager. It includes all the required components:

- Plausible Analytics application
- ClickHouse for analytics data storage
- Automatic database initialization
- Ingress configuration
- TLS support via cert-manager

## Features

- Easy deployment of Plausible Analytics
- Configurable resources for all components
- Support for existing PostgreSQL databases
- Automatic TLS certificate management
- Configurable email settings
- Persistent storage for ClickHouse

## Prerequisites

* Kubernetes 1.19+
* Helm 3.0+
* PostgreSQL database
* PV provisioner support in the underlying infrastructure
* Cert-manager for TLS certificates (optional)

## Installing the Chart

See the [chart documentation](https://github.com/cevatkerim/plausible-helm-chart/blob/main/charts/plausible/README.md) for detailed installation and configuration instructions.

## Contributing

We welcome contributions! Please feel free to submit a Pull Request.

## License

This Helm chart is licensed under the MIT License. 
Plausible Analytics is licensed under the GNU Affero General Public License v3.0.
