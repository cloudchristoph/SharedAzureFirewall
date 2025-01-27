resource peering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2020-07-01' = {
  name: 'hub-vnet/spoke1-vnet'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: '/subscriptions/workloadSubscriptionId/resourceGroups/spoke1-network/providers/Microsoft.Network/virtualNetworks/spoke1-vnet'
    }
  }
}
