# Europeana IIIF Gateway

Gateway for Europeana IIIF services using [NGINX on CloudFoundry](https://docs.cloudfoundry.org/buildpacks/nginx/).

## Usage

### Cloud Foundry

1. Copy [manifest.example.yml](manifest.example.yml) to manifest.yml
2. Set all environment variable values in manifest.yml
3. Deploy to Cloud Foundry: `cf push iiif-gateway -f manifest.yml`

## License

Licensed under the EUPL V.1.1.

For full details, see [LICENSE.md](LICENSE.md).
