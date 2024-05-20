package cmd

type ClusterConfig struct {
	clusterName string
	clusterEndpoint string
	base64CertificateAuthorityData string
}

var cluster1 = ClusterConfig{
			clusterName: "sandbox-eu-central-1",
			clusterEndpoint: "{{ op://cohorts/thirteen-platform-sandbox-eu-central-1/cluster-endpoint }}",
			base64CertificateAuthorityData: "{{ op://cohorts/thirteen-platform-sandbox-eu-central-1/base64-certificate-authority-data }}",
		}

var clusters = []ClusterConfig{ cluster1 }

const (
	LoginClientId		 						    = "{{ op://cohorts/team-thirteen-svc-auth0/dev-qpg1qvzhu5yxp3df-dev-dpsctl-client-id }}"
	LoginScope                      = "openid offline_access profile email"
	LoginAudience                   = ""

	IdpIssuerUrl								    = "https://dev-qpg1qvzhu5yxp3df.us.auth0.com/"

	ConfigEnvDefault                = "DPSCTL"
	ConfigFileDefaultName           = "config"
	ConfigFileDefaultType           = "yaml"
	ConfigFileDefaultLocation       = "/.dpsctl" // path will begin with $HOME dir
	ConfigFileDefaultLocationMsg    = "config file (default is $HOME/.dpsctl/config.yaml)"

	DefaultCluster                  = "prod-us-east-1"
	TeamsApi                        = "http://localhost:8000"
)
