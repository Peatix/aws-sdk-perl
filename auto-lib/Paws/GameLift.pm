package Paws::GameLift;
  use Moose;
  sub service { 'gamelift' }
  sub signing_name { 'gamelift' }
  sub version { '2015-10-01' }
  sub target_prefix { 'GameLift' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptMatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::AcceptMatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ClaimGameServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ClaimGameServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContainerFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateContainerFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContainerGroupDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateContainerGroupDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleetLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateFleetLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGameServerGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateGameServerGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGameSessionQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateGameSessionQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMatchmakingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateMatchmakingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMatchmakingRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateMatchmakingRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlayerSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreatePlayerSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreatePlayerSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateVpcPeeringAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContainerFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteContainerFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContainerGroupDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteContainerGroupDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleetLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteFleetLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGameServerGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteGameServerGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGameSessionQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteGameSessionQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMatchmakingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteMatchmakingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMatchmakingRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteMatchmakingRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteVpcPeeringAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterCompute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeregisterCompute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterGameServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeregisterGameServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCompute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeCompute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContainerFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeContainerFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContainerGroupDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeContainerGroupDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEC2InstanceLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeEC2InstanceLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetLocationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetLocationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetLocationCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetLocationCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetLocationUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetLocationUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetPortSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetPortSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameServerGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameServerGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameServerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameServerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMatchmaking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeMatchmaking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMatchmakingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeMatchmakingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMatchmakingRuleSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeMatchmakingRuleSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribePlayerSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuntimeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeRuntimeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeScalingPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringAuthorizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeVpcPeeringAuthorizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeVpcPeeringConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComputeAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetComputeAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComputeAuthToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetComputeAuthToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGameSessionLogUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetGameSessionLogUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetInstanceAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCompute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListCompute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListContainerFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerGroupDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListContainerGroupDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerGroupDefinitionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListContainerGroupDefinitionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleetDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListFleetDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGameServerGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListGameServerGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGameServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListGameServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScripts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListScripts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::PutScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCompute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::RegisterCompute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterGameServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::RegisterGameServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestUploadCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::RequestUploadCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ResolveAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeGameServerGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ResumeGameServerGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchGameSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::SearchGameSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFleetActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartFleetActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartGameSessionPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartGameSessionPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMatchBackfill {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartMatchBackfill', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMatchmaking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartMatchmaking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFleetActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StopFleetActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopGameSessionPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StopGameSessionPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMatchmaking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StopMatchmaking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SuspendGameServerGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::SuspendGameServerGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::TerminateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContainerFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateContainerFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContainerGroupDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateContainerGroupDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetPortSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetPortSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameServerGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameServerGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameSessionQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameSessionQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMatchmakingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateMatchmakingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuntimeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateRuntimeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateMatchmakingRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ValidateMatchmakingRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllFleetAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetAttributes }, @{ $next_result->FleetAttributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetAttributes') foreach (@{ $result->FleetAttributes });
        $result = $self->DescribeFleetAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetAttributes') foreach (@{ $result->FleetAttributes });
    }

    return undef
  }
  sub DescribeAllFleetCapacity {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetCapacity(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetCapacity(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetCapacity }, @{ $next_result->FleetCapacity };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetCapacity') foreach (@{ $result->FleetCapacity });
        $result = $self->DescribeFleetCapacity(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetCapacity') foreach (@{ $result->FleetCapacity });
    }

    return undef
  }
  sub DescribeAllFleetEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeFleetEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllFleetUtilization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetUtilization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetUtilization(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetUtilization }, @{ $next_result->FleetUtilization };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetUtilization') foreach (@{ $result->FleetUtilization });
        $result = $self->DescribeFleetUtilization(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetUtilization') foreach (@{ $result->FleetUtilization });
    }

    return undef
  }
  sub DescribeAllGameServerInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameServerInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameServerInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameServerInstances }, @{ $next_result->GameServerInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameServerInstances') foreach (@{ $result->GameServerInstances });
        $result = $self->DescribeGameServerInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameServerInstances') foreach (@{ $result->GameServerInstances });
    }

    return undef
  }
  sub DescribeAllGameSessionDetails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameSessionDetails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameSessionDetails(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessionDetails }, @{ $next_result->GameSessionDetails };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessionDetails') foreach (@{ $result->GameSessionDetails });
        $result = $self->DescribeGameSessionDetails(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessionDetails') foreach (@{ $result->GameSessionDetails });
    }

    return undef
  }
  sub DescribeAllGameSessionQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameSessionQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameSessionQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessionQueues }, @{ $next_result->GameSessionQueues };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessionQueues') foreach (@{ $result->GameSessionQueues });
        $result = $self->DescribeGameSessionQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessionQueues') foreach (@{ $result->GameSessionQueues });
    }

    return undef
  }
  sub DescribeAllGameSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessions }, @{ $next_result->GameSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
        $result = $self->DescribeGameSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
    }

    return undef
  }
  sub DescribeAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->DescribeInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub DescribeAllMatchmakingConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMatchmakingConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMatchmakingConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Configurations }, @{ $next_result->Configurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
        $result = $self->DescribeMatchmakingConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
    }

    return undef
  }
  sub DescribeAllMatchmakingRuleSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMatchmakingRuleSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMatchmakingRuleSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleSets }, @{ $next_result->RuleSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
        $result = $self->DescribeMatchmakingRuleSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
    }

    return undef
  }
  sub DescribeAllPlayerSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePlayerSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePlayerSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->PlayerSessions }, @{ $next_result->PlayerSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PlayerSessions') foreach (@{ $result->PlayerSessions });
        $result = $self->DescribePlayerSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PlayerSessions') foreach (@{ $result->PlayerSessions });
    }

    return undef
  }
  sub DescribeAllScalingPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScalingPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScalingPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScalingPolicies }, @{ $next_result->ScalingPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScalingPolicies') foreach (@{ $result->ScalingPolicies });
        $result = $self->DescribeScalingPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScalingPolicies') foreach (@{ $result->ScalingPolicies });
    }

    return undef
  }
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllBuilds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuilds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBuilds(@_, NextToken => $next_result->NextToken);
        push @{ $result->Builds }, @{ $next_result->Builds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Builds') foreach (@{ $result->Builds });
        $result = $self->ListBuilds(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Builds') foreach (@{ $result->Builds });
    }

    return undef
  }
  sub ListAllCompute {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCompute(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCompute(@_, NextToken => $next_result->NextToken);
        push @{ $result->ComputeList }, @{ $next_result->ComputeList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ComputeList') foreach (@{ $result->ComputeList });
        $result = $self->ListCompute(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ComputeList') foreach (@{ $result->ComputeList });
    }

    return undef
  }
  sub ListAllContainerFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainerFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContainerFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContainerFleets }, @{ $next_result->ContainerFleets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContainerFleets') foreach (@{ $result->ContainerFleets });
        $result = $self->ListContainerFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContainerFleets') foreach (@{ $result->ContainerFleets });
    }

    return undef
  }
  sub ListAllContainerGroupDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainerGroupDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContainerGroupDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContainerGroupDefinitions }, @{ $next_result->ContainerGroupDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContainerGroupDefinitions') foreach (@{ $result->ContainerGroupDefinitions });
        $result = $self->ListContainerGroupDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContainerGroupDefinitions') foreach (@{ $result->ContainerGroupDefinitions });
    }

    return undef
  }
  sub ListAllContainerGroupDefinitionVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainerGroupDefinitionVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContainerGroupDefinitionVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContainerGroupDefinitions }, @{ $next_result->ContainerGroupDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContainerGroupDefinitions') foreach (@{ $result->ContainerGroupDefinitions });
        $result = $self->ListContainerGroupDefinitionVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContainerGroupDefinitions') foreach (@{ $result->ContainerGroupDefinitions });
    }

    return undef
  }
  sub ListAllFleetDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleetDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFleetDeployments(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetDeployments }, @{ $next_result->FleetDeployments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetDeployments') foreach (@{ $result->FleetDeployments });
        $result = $self->ListFleetDeployments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetDeployments') foreach (@{ $result->FleetDeployments });
    }

    return undef
  }
  sub ListAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetIds }, @{ $next_result->FleetIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetIds') foreach (@{ $result->FleetIds });
        $result = $self->ListFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetIds') foreach (@{ $result->FleetIds });
    }

    return undef
  }
  sub ListAllGameServerGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGameServerGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGameServerGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameServerGroups }, @{ $next_result->GameServerGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameServerGroups') foreach (@{ $result->GameServerGroups });
        $result = $self->ListGameServerGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameServerGroups') foreach (@{ $result->GameServerGroups });
    }

    return undef
  }
  sub ListAllGameServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGameServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGameServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameServers }, @{ $next_result->GameServers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameServers') foreach (@{ $result->GameServers });
        $result = $self->ListGameServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameServers') foreach (@{ $result->GameServers });
    }

    return undef
  }
  sub ListAllLocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLocations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Locations }, @{ $next_result->Locations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Locations') foreach (@{ $result->Locations });
        $result = $self->ListLocations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Locations') foreach (@{ $result->Locations });
    }

    return undef
  }
  sub ListAllScripts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScripts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListScripts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Scripts }, @{ $next_result->Scripts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Scripts') foreach (@{ $result->Scripts });
        $result = $self->ListScripts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Scripts') foreach (@{ $result->Scripts });
    }

    return undef
  }
  sub SearchAllGameSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchGameSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchGameSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessions }, @{ $next_result->GameSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
        $result = $self->SearchGameSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
    }

    return undef
  }


  sub operations { qw/AcceptMatch ClaimGameServer CreateAlias CreateBuild CreateContainerFleet CreateContainerGroupDefinition CreateFleet CreateFleetLocations CreateGameServerGroup CreateGameSession CreateGameSessionQueue CreateLocation CreateMatchmakingConfiguration CreateMatchmakingRuleSet CreatePlayerSession CreatePlayerSessions CreateScript CreateVpcPeeringAuthorization CreateVpcPeeringConnection DeleteAlias DeleteBuild DeleteContainerFleet DeleteContainerGroupDefinition DeleteFleet DeleteFleetLocations DeleteGameServerGroup DeleteGameSessionQueue DeleteLocation DeleteMatchmakingConfiguration DeleteMatchmakingRuleSet DeleteScalingPolicy DeleteScript DeleteVpcPeeringAuthorization DeleteVpcPeeringConnection DeregisterCompute DeregisterGameServer DescribeAlias DescribeBuild DescribeCompute DescribeContainerFleet DescribeContainerGroupDefinition DescribeEC2InstanceLimits DescribeFleetAttributes DescribeFleetCapacity DescribeFleetDeployment DescribeFleetEvents DescribeFleetLocationAttributes DescribeFleetLocationCapacity DescribeFleetLocationUtilization DescribeFleetPortSettings DescribeFleetUtilization DescribeGameServer DescribeGameServerGroup DescribeGameServerInstances DescribeGameSessionDetails DescribeGameSessionPlacement DescribeGameSessionQueues DescribeGameSessions DescribeInstances DescribeMatchmaking DescribeMatchmakingConfigurations DescribeMatchmakingRuleSets DescribePlayerSessions DescribeRuntimeConfiguration DescribeScalingPolicies DescribeScript DescribeVpcPeeringAuthorizations DescribeVpcPeeringConnections GetComputeAccess GetComputeAuthToken GetGameSessionLogUrl GetInstanceAccess ListAliases ListBuilds ListCompute ListContainerFleets ListContainerGroupDefinitions ListContainerGroupDefinitionVersions ListFleetDeployments ListFleets ListGameServerGroups ListGameServers ListLocations ListScripts ListTagsForResource PutScalingPolicy RegisterCompute RegisterGameServer RequestUploadCredentials ResolveAlias ResumeGameServerGroup SearchGameSessions StartFleetActions StartGameSessionPlacement StartMatchBackfill StartMatchmaking StopFleetActions StopGameSessionPlacement StopMatchmaking SuspendGameServerGroup TagResource TerminateGameSession UntagResource UpdateAlias UpdateBuild UpdateContainerFleet UpdateContainerGroupDefinition UpdateFleetAttributes UpdateFleetCapacity UpdateFleetPortSettings UpdateGameServer UpdateGameServerGroup UpdateGameSession UpdateGameSessionQueue UpdateMatchmakingConfiguration UpdateRuntimeConfiguration UpdateScript ValidateMatchmakingRuleSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift - Perl Interface to AWS Amazon GameLift

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GameLift');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon GameLift provides solutions for hosting session-based
multiplayer game servers in the cloud, including tools for deploying,
operating, and scaling game servers. Built on Amazon Web Services
global computing infrastructure, GameLift helps you deliver
high-performance, high-reliability, low-cost game servers while
dynamically scaling your resource usage to meet player demand.

B<About Amazon GameLift solutions>

Get more information on these Amazon GameLift solutions in the Amazon
GameLift Developer Guide
(https://docs.aws.amazon.com/gamelift/latest/developerguide/).

=over

=item *

Amazon GameLift managed hosting -- Amazon GameLift offers a fully
managed service to set up and maintain computing machines for hosting,
manage game session and player session life cycle, and handle security,
storage, and performance tracking. You can use automatic scaling tools
to balance player demand and hosting costs, configure your game session
management to minimize player latency, and add FlexMatch for
matchmaking.

=item *

Managed hosting with Amazon GameLift Realtime -- With Amazon GameLift
Amazon GameLift Realtime, you can quickly configure and set up
ready-to-go game servers for your game. Amazon GameLift Realtime
provides a game server framework with core Amazon GameLift
infrastructure already built in. Then use the full range of Amazon
GameLift managed hosting features, including FlexMatch, for your game.

=item *

Amazon GameLift FleetIQ -- Use Amazon GameLift FleetIQ as a standalone
service while hosting your games using EC2 instances and Auto Scaling
groups. Amazon GameLift FleetIQ provides optimizations for game
hosting, including boosting the viability of low-cost Spot Instances
gaming. For a complete solution, pair the Amazon GameLift FleetIQ and
FlexMatch standalone services.

=item *

Amazon GameLift FlexMatch -- Add matchmaking to your game hosting
solution. FlexMatch is a customizable matchmaking service for
multiplayer games. Use FlexMatch as integrated with Amazon GameLift
managed hosting or incorporate FlexMatch as a standalone service into
your own hosting solution.

=back

B<About this API Reference>

This reference guide describes the low-level service API for Amazon
GameLift. With each topic in this guide, you can find links to
language-specific SDK guides and the Amazon Web Services CLI reference.
Useful links:

=over

=item *

Amazon GameLift API operations listed by tasks
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html)

=item *

Amazon GameLift tools and resources
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html)

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AcceptMatch

=over

=item AcceptanceType => Str

=item PlayerIds => ArrayRef[Str|Undef]

=item TicketId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::AcceptMatch>

Returns: a L<Paws::GameLift::AcceptMatchOutput> instance

Registers a player's acceptance or rejection of a proposed FlexMatch
match. A matchmaking configuration may require player acceptance; if
so, then matches built with that configuration cannot be completed
unless all players accept the proposed match within a specified time
limit.

When FlexMatch builds a match, all the matchmaking tickets involved in
the proposed match are placed into status C<REQUIRES_ACCEPTANCE>. This
is a trigger for your game to get acceptance from all players in each
ticket. Calls to this action are only valid for tickets that are in
this status; calls for tickets not in this status result in an error.

To register acceptance, specify the ticket ID, one or more players, and
an acceptance response. When all players have accepted, Amazon GameLift
advances the matchmaking tickets to status C<PLACING>, and attempts to
create a new game session for the match.

If any player rejects the match, or if acceptances are not received
before a specified timeout, the proposed match is dropped. Each
matchmaking ticket in the failed match is handled as follows:

=over

=item *

If the ticket has one or more players who rejected the match or failed
to respond, the ticket status is set C<CANCELLED> and processing is
terminated.

=item *

If all players in the ticket accepted the match, the ticket status is
returned to C<SEARCHING> to find a new match.

=back

B<Learn more>

Add FlexMatch to a game client
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)

FlexMatch events
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html)
(reference)


=head2 ClaimGameServer

=over

=item GameServerGroupName => Str

=item [FilterOption => L<Paws::GameLift::ClaimFilterOption>]

=item [GameServerData => Str]

=item [GameServerId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ClaimGameServer>

Returns: a L<Paws::GameLift::ClaimGameServerOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Locates an available game server and temporarily reserves it to host
gameplay and players. This operation is called from a game client or
client service (such as a matchmaker) to request hosting resources for
a new game session. In response, Amazon GameLift FleetIQ locates an
available game server, places it in C<CLAIMED> status for 60 seconds,
and returns connection information that players can use to connect to
the game server.

To claim a game server, identify a game server group. You can also
specify a game server ID, although this approach bypasses Amazon
GameLift FleetIQ placement optimization. Optionally, include game data
to pass to the game server at the start of a game session, such as a
game map or player information. Add filter options to further restrict
how a game server is chosen, such as only allowing game servers on
C<ACTIVE> instances to be claimed.

When a game server is successfully claimed, connection information is
returned. A claimed game server's utilization status remains
C<AVAILABLE> while the claim status is set to C<CLAIMED> for up to 60
seconds. This time period gives the game server time to update its
status to C<UTILIZED> after players join. If the game server's status
is not updated within 60 seconds, the game server reverts to unclaimed
status and is available to be claimed by another request. The claim
time period is a fixed value and is not configurable.

If you try to claim a specific game server, this request will fail in
the following cases:

=over

=item *

If the game server utilization status is C<UTILIZED>.

=item *

If the game server claim status is C<CLAIMED>.

=item *

If the game server is running on an instance in C<DRAINING> status and
the provided filter option does not allow placing on C<DRAINING>
instances.

=back

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 CreateAlias

=over

=item Name => Str

=item RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateAlias>

Returns: a L<Paws::GameLift::CreateAliasOutput> instance

Creates an alias for a fleet. In most situations, you can use an alias
ID in place of a fleet ID. An alias provides a level of abstraction for
a fleet that is useful when redirecting player traffic from one fleet
to another, such as when updating your game build.

Amazon GameLift supports two types of routing strategies for aliases:
simple and terminal. A simple alias points to an active fleet. A
terminal alias is used to display messaging or link to a URL instead of
routing players to an active fleet. For example, you might use a
terminal alias when a game version is no longer supported and you want
to direct players to an upgrade site.

To create a fleet alias, specify an alias name, routing strategy, and
optional description. Each simple alias can point to only one fleet,
but a fleet can have multiple aliases. If successful, a new alias
record is returned, including an alias ID and an ARN. You can reassign
an alias to another fleet by calling C<UpdateAlias>.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateBuild

=over

=item [Name => Str]

=item [OperatingSystem => Str]

=item [ServerSdkVersion => Str]

=item [StorageLocation => L<Paws::GameLift::S3Location>]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateBuild>

Returns: a L<Paws::GameLift::CreateBuildOutput> instance

Creates a new Amazon GameLift build resource for your game server
binary files. Combine game server binaries into a zip file for use with
Amazon GameLift.

When setting up a new game build for Amazon GameLift, we recommend
using the CLI command B< upload-build
(https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)
>. This helper command combines two tasks: (1) it uploads your build
files from a file directory to an Amazon GameLift Amazon S3 location,
and (2) it creates a new build resource.

You can use the C<CreateBuild> operation in the following scenarios:

=over

=item *

Create a new game build with build files that are in an Amazon S3
location under an Amazon Web Services account that you control. To use
this option, you give Amazon GameLift access to the Amazon S3 bucket.
With permissions in place, specify a build name, operating system, and
the Amazon S3 storage location of your game build.

=item *

Upload your build files to a Amazon GameLift Amazon S3 location. To use
this option, specify a build name and operating system. This operation
creates a new build resource and also returns an Amazon S3 location
with temporary access credentials. Use the credentials to manually
upload your build files to the specified Amazon S3 location. For more
information, see Uploading Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)
in the I<Amazon S3 Developer Guide>. After you upload build files to
the Amazon GameLift Amazon S3 location, you can't update them.

=back

If successful, this operation creates a new build resource with a
unique build ID and places it in C<INITIALIZED> status. A build must be
in C<READY> status before you can create fleets with it.

B<Learn more>

Uploading Your Game
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

Create a Build with Files in Amazon S3
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateContainerFleet

=over

=item FleetRoleArn => Str

=item [BillingType => Str]

=item [Description => Str]

=item [GameServerContainerGroupDefinitionName => Str]

=item [GameServerContainerGroupsPerInstance => Int]

=item [GameSessionCreationLimitPolicy => L<Paws::GameLift::GameSessionCreationLimitPolicy>]

=item [InstanceConnectionPortRange => L<Paws::GameLift::ConnectionPortRange>]

=item [InstanceInboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [InstanceType => Str]

=item [Locations => ArrayRef[L<Paws::GameLift::LocationConfiguration>]]

=item [LogConfiguration => L<Paws::GameLift::LogConfiguration>]

=item [MetricGroups => ArrayRef[Str|Undef]]

=item [NewGameSessionProtectionPolicy => Str]

=item [PerInstanceContainerGroupDefinitionName => Str]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateContainerFleet>

Returns: a L<Paws::GameLift::CreateContainerFleetOutput> instance

Creates a managed fleet of Amazon Elastic Compute Cloud (Amazon EC2)
instances to host your containerized game servers. Use this operation
to define how to deploy a container architecture onto each fleet
instance and configure fleet settings. You can create a container fleet
in any Amazon Web Services Regions that Amazon GameLift supports for
multi-location fleets. A container fleet can be deployed to a single
location or multiple locations. Container fleets are deployed with
Amazon Linux 2023 as the instance operating system.

Define the fleet's container architecture using container group
definitions. Each fleet can have one of the following container group
types:

=over

=item *

The game server container group runs your game server build and
dependent software. Amazon GameLift deploys one or more replicas of
this container group to each fleet instance. The number of replicas
depends on the computing capabilities of the fleet instance in use.

=item *

An optional per-instance container group might be used to run other
software that only needs to run once per instance, such as background
services, logging, or test processes. One per-instance container group
is deployed to each fleet instance.

=back

Each container group can include the definition for one or more
containers. A container definition specifies a container image that is
stored in an Amazon Elastic Container Registry (Amazon ECR) public or
private repository.

B<Request options>

Use this operation to make the following types of requests. Most fleet
settings have default values, so you can create a working fleet with a
minimal configuration and default values, which you can customize
later.

=over

=item *

Create a fleet with no container groups. You can configure a container
fleet and then add container group definitions later. In this scenario,
no fleet instances are deployed, and the fleet can't host game sessions
until you add a game server container group definition. Provide the
following required parameter values:

=over

=item *

C<FleetRoleArn>

=back

=item *

Create a fleet with a game server container group. Provide the
following required parameter values:

=over

=item *

C<FleetRoleArn>

=item *

C<GameServerContainerGroupDefinitionName>

=back

=item *

Create a fleet with a game server container group and a per-instance
container group. Provide the following required parameter values:

=over

=item *

C<FleetRoleArn>

=item *

C<GameServerContainerGroupDefinitionName>

=item *

C<PerInstanceContainerGroupDefinitionName>

=back

=back

B<Results>

If successful, this operation creates a new container fleet resource,
places it in C<PENDING> status, and initiates the fleet creation
workflow
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow).
For fleets with container groups, this workflow starts a fleet
deployment and transitions the status to C<ACTIVE>. Fleets without a
container group are placed in C<CREATED> status.

You can update most of the properties of a fleet, including container
group definitions, and deploy the update across all fleet instances.
Use a fleet update to deploy a new game server version update across
the container fleet.


=head2 CreateContainerGroupDefinition

=over

=item Name => Str

=item OperatingSystem => Str

=item TotalMemoryLimitMebibytes => Int

=item TotalVcpuLimit => Num

=item [ContainerGroupType => Str]

=item [GameServerContainerDefinition => L<Paws::GameLift::GameServerContainerDefinitionInput>]

=item [SupportContainerDefinitions => ArrayRef[L<Paws::GameLift::SupportContainerDefinitionInput>]]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateContainerGroupDefinition>

Returns: a L<Paws::GameLift::CreateContainerGroupDefinitionOutput> instance

Creates a C<ContainerGroupDefinition> that describes a set of
containers for hosting your game server with Amazon GameLift managed
containers hosting. An Amazon GameLift container group is similar to a
container task or pod. Use container group definitions when you create
a container fleet with CreateContainerFleet
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerFleet.html).

A container group definition determines how Amazon GameLift deploys
your containers to each instance in a container fleet. You can maintain
multiple versions of a container group definition.

There are two types of container groups:

=over

=item *

A B<game server container group> has the containers that run your game
server application and supporting software. A game server container
group can have these container types:

=over

=item *

Game server container. This container runs your game server. You can
define one game server container in a game server container group.

=item *

Support container. This container runs software in parallel with your
game server. You can define up to 8 support containers in a game server
group.

=back

When building a game server container group definition, you can choose
to bundle your game server executable and all dependent software into a
single game server container. Alternatively, you can separate the
software into one game server container and one or more support
containers.

On a container fleet instance, a game server container group can be
deployed multiple times (depending on the compute resources of the
instance). This means that all containers in the container group are
replicated together.

=item *

A B<per-instance container group> has containers for processes that
aren't replicated on a container fleet instance. This might include
background services, logging, test processes, or processes that need to
persist independently of the game server container group. When building
a per-instance container group, you can define up to 10 support
containers.

=back

This operation requires Identity and Access Management (IAM)
permissions to access container images in Amazon ECR repositories. See
IAM permissions for Amazon GameLift
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html)
for help setting the appropriate permissions.

B<Request options>

Use this operation to make the following types of requests. You can
specify values for the minimum required parameters and customize
optional values later.

=over

=item *

Create a game server container group definition. Provide the following
required parameter values:

=over

=item *

C<Name>

=item *

C<ContainerGroupType> (C<GAME_SERVER>)

=item *

C<OperatingSystem> (omit to use default value)

=item *

C<TotalMemoryLimitMebibytes> (omit to use default value)

=item *

C<TotalVcpuLimit >(omit to use default value)

=item *

At least one C<GameServerContainerDefinition>

=over

=item *

C<ContainerName>

=item *

C<ImageUrl>

=item *

C<PortConfiguration>

=item *

C<ServerSdkVersion> (omit to use default value)

=back

=back

=item *

Create a per-instance container group definition. Provide the following
required parameter values:

=over

=item *

C<Name>

=item *

C<ContainerGroupType> (C<PER_INSTANCE>)

=item *

C<OperatingSystem> (omit to use default value)

=item *

C<TotalMemoryLimitMebibytes> (omit to use default value)

=item *

C<TotalVcpuLimit >(omit to use default value)

=item *

At least one C<SupportContainerDefinition>

=over

=item *

C<ContainerName>

=item *

C<ImageUrl>

=back

=back

=back

B<Results>

If successful, this request creates a C<ContainerGroupDefinition>
resource and assigns a unique ARN value. You can update most properties
of a container group definition by calling
UpdateContainerGroupDefinition
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html),
and optionally save the update as a new version.


=head2 CreateFleet

=over

=item Name => Str

=item [AnywhereConfiguration => L<Paws::GameLift::AnywhereConfiguration>]

=item [BuildId => Str]

=item [CertificateConfiguration => L<Paws::GameLift::CertificateConfiguration>]

=item [ComputeType => Str]

=item [Description => Str]

=item [EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [EC2InstanceType => Str]

=item [FleetType => Str]

=item [InstanceRoleArn => Str]

=item [InstanceRoleCredentialsProvider => Str]

=item [Locations => ArrayRef[L<Paws::GameLift::LocationConfiguration>]]

=item [LogPaths => ArrayRef[Str|Undef]]

=item [MetricGroups => ArrayRef[Str|Undef]]

=item [NewGameSessionProtectionPolicy => Str]

=item [PeerVpcAwsAccountId => Str]

=item [PeerVpcId => Str]

=item [ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>]

=item [RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>]

=item [ScriptId => Str]

=item [ServerLaunchParameters => Str]

=item [ServerLaunchPath => Str]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateFleet>

Returns: a L<Paws::GameLift::CreateFleetOutput> instance

Creates a fleet of compute resources to host your game servers. Use
this operation to set up the following types of fleets based on compute
type:

B<Managed EC2 fleet>

An EC2 fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2)
instances. Your game server build is deployed to each fleet instance.
Amazon GameLift manages the fleet's instances and controls the
lifecycle of game server processes, which host game sessions for
players. EC2 fleets can have instances in multiple locations. Each
instance in the fleet is designated a C<Compute>.

To create an EC2 fleet, provide these required parameters:

=over

=item *

Either C<BuildId> or C<ScriptId>

=item *

C<ComputeType> set to C<EC2> (the default value)

=item *

C<EC2InboundPermissions>

=item *

C<EC2InstanceType>

=item *

C<FleetType>

=item *

C<Name>

=item *

C<RuntimeConfiguration> with at least one C<ServerProcesses>
configuration

=back

If successful, this operation creates a new fleet resource and places
it in C<NEW> status while Amazon GameLift initiates the fleet creation
workflow
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow).
To debug your fleet, fetch logs, view performance metrics or other
actions on the fleet, create a development fleet with port 22/3389
open. As a best practice, we recommend opening ports for remote access
only when you need them and closing them when you're finished.

When the fleet status is ACTIVE, you can adjust capacity settings and
turn autoscaling on/off for each location.

B<Anywhere fleet>

An Anywhere fleet represents compute resources that are not owned or
managed by Amazon GameLift. You might create an Anywhere fleet with
your local machine for testing, or use one to host game servers with
on-premises hardware or other game hosting solutions.

To create an Anywhere fleet, provide these required parameters:

=over

=item *

C<ComputeType> set to C<ANYWHERE>

=item *

C<Locations> specifying a custom location

=item *

C<Name>

=back

If successful, this operation creates a new fleet resource and places
it in C<ACTIVE> status. You can register computes with a fleet in
C<ACTIVE> status.

B<Learn more>

Setting up fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

Debug fleet creation issues
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation)

Multi-location fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 CreateFleetLocations

=over

=item FleetId => Str

=item Locations => ArrayRef[L<Paws::GameLift::LocationConfiguration>]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateFleetLocations>

Returns: a L<Paws::GameLift::CreateFleetLocationsOutput> instance

Adds remote locations to an EC2 and begins populating the new locations
with instances. The new instances conform to the fleet's instance type,
auto-scaling, and other configuration settings.

You can't add remote locations to a fleet that resides in an Amazon Web
Services Region that doesn't support multiple locations. Fleets created
prior to March 2021 can't support multiple locations.

To add fleet locations, specify the fleet to be updated and provide a
list of one or more locations.

If successful, this operation returns the list of added locations with
their status set to C<NEW>. Amazon GameLift initiates the process of
starting an instance in each added location. You can track the status
of each new location by monitoring location creation events using
DescribeFleetEvents
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html).

B<Learn more>

Setting up fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

Update fleet locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-editing.html#fleets-update-locations)

Amazon GameLift service locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
for managed hosting.


=head2 CreateGameServerGroup

=over

=item GameServerGroupName => Str

=item InstanceDefinitions => ArrayRef[L<Paws::GameLift::InstanceDefinition>]

=item LaunchTemplate => L<Paws::GameLift::LaunchTemplateSpecification>

=item MaxSize => Int

=item MinSize => Int

=item RoleArn => Str

=item [AutoScalingPolicy => L<Paws::GameLift::GameServerGroupAutoScalingPolicy>]

=item [BalancingStrategy => Str]

=item [GameServerProtectionPolicy => Str]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]

=item [VpcSubnets => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateGameServerGroup>

Returns: a L<Paws::GameLift::CreateGameServerGroupOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Creates a Amazon GameLift FleetIQ game server group for managing game
hosting on a collection of Amazon Elastic Compute Cloud instances for
game hosting. This operation creates the game server group, creates an
Auto Scaling group in your Amazon Web Services account, and establishes
a link between the two groups. You can view the status of your game
server groups in the Amazon GameLift console. Game server group metrics
and events are emitted to Amazon CloudWatch.

Before creating a new game server group, you must have the following:

=over

=item *

An Amazon Elastic Compute Cloud launch template that specifies how to
launch Amazon Elastic Compute Cloud instances with your game server
build. For more information, see Launching an Instance from a Launch
Template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

=item *

An IAM role that extends limited access to your Amazon Web Services
account to allow Amazon GameLift FleetIQ to create and interact with
the Auto Scaling group. For more information, see Create IAM roles for
cross-service interaction
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html)
in the I<Amazon GameLift FleetIQ Developer Guide>.

=back

To create a new game server group, specify a unique group name, IAM
role and Amazon Elastic Compute Cloud launch template, and provide a
list of instance types that can be used in the group. You must also set
initial maximum and minimum limits on the group's instance count. You
can optionally set an Auto Scaling policy with target tracking based on
a Amazon GameLift FleetIQ metric.

Once the game server group and corresponding Auto Scaling group are
created, you have full access to change the Auto Scaling group's
configuration as needed. Several properties that are set when creating
a game server group, including maximum/minimum size and auto-scaling
policy settings, must be updated directly in the Auto Scaling group.
Keep in mind that some Auto Scaling group properties are periodically
updated by Amazon GameLift FleetIQ as part of its balancing activities
to optimize for availability and cost.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 CreateGameSession

=over

=item MaximumPlayerSessionCount => Int

=item [AliasId => Str]

=item [CreatorId => Str]

=item [FleetId => Str]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionId => Str]

=item [IdempotencyToken => Str]

=item [Location => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateGameSession>

Returns: a L<Paws::GameLift::CreateGameSessionOutput> instance

Creates a multiplayer game session for players in a specific fleet
location. This operation prompts an available server process to start a
game session and retrieves connection information for the new game
session. As an alternative, consider using the Amazon GameLift game
session placement feature with StartGameSessionPlacement
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html),
which uses the FleetIQ algorithm and queues to optimize the placement
process.

When creating a game session, you specify exactly where you want to
place it and provide a set of game session configuration settings. The
target fleet must be in C<ACTIVE> status.

You can use this operation in the following ways:

=over

=item *

To create a game session on an instance in a fleet's home Region,
provide a fleet or alias ID along with your game session configuration.

=item *

To create a game session on an instance in a fleet's remote location,
provide a fleet or alias ID and a location name, along with your game
session configuration.

=item *

To create a game session on an instance in an Anywhere fleet, specify
the fleet's custom location.

=back

If successful, Amazon GameLift initiates a workflow to start a new game
session and returns a C<GameSession> object containing the game session
configuration and status. When the game session status is C<ACTIVE>, it
is updated with connection information and you can create player
sessions for the game session. By default, newly created game sessions
are open to new players. You can restrict new player access by using
UpdateGameSession
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html)
to change the game session's player session creation policy.

Amazon GameLift retains logs for active for 14 days. To access the
logs, call GetGameSessionLogUrl
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetGameSessionLogUrl.html)
to download the log files.

I<Available in Amazon GameLift Local.>

B<Learn more>

Start a game session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateGameSessionQueue

=over

=item Name => Str

=item [CustomEventData => Str]

=item [Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]]

=item [FilterConfiguration => L<Paws::GameLift::FilterConfiguration>]

=item [NotificationTarget => Str]

=item [PlayerLatencyPolicies => ArrayRef[L<Paws::GameLift::PlayerLatencyPolicy>]]

=item [PriorityConfiguration => L<Paws::GameLift::PriorityConfiguration>]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]

=item [TimeoutInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateGameSessionQueue>

Returns: a L<Paws::GameLift::CreateGameSessionQueueOutput> instance

Creates a placement queue that processes requests for new game
sessions. A queue uses FleetIQ algorithms to locate the best available
placement locations for a new game session, and then prompts the game
server process to start a new game session.

A game session queue is configured with a set of destinations (Amazon
GameLift fleets or aliases) that determine where the queue can place
new game sessions. These destinations can span multiple Amazon Web
Services Regions, can use different instance types, and can include
both Spot and On-Demand fleets. If the queue includes multi-location
fleets, the queue can place game sessions in any of a fleet's remote
locations.

You can configure a queue to determine how it selects the best
available placement for a new game session. Queues can prioritize
placement decisions based on a combination of location, hosting cost,
and player latency. You can set up the queue to use the default
prioritization or provide alternate instructions using
C<PriorityConfiguration>.

B<Request options>

Use this operation to make these common types of requests.

=over

=item *

Create a queue with the minimum required parameters.

=over

=item *

C<Name>

=item *

C<Destinations> (This parameter isn't required, but a queue can't make
placements without at least one destination.)

=back

=item *

Create a queue with placement notification. Queues that have high
placement activity must use a notification system, such as with Amazon
Simple Notification Service (Amazon SNS) or Amazon CloudWatch.

=over

=item *

Required parameters C<Name> and C<Destinations>

=item *

C<NotificationTarget>

=back

=item *

Create a queue with custom prioritization settings. These custom
settings replace the default prioritization configuration for a queue.

=over

=item *

Required parameters C<Name> and C<Destinations>

=item *

C<PriorityConfiguration>

=back

=item *

Create a queue with special rules for processing player latency data.

=over

=item *

Required parameters C<Name> and C<Destinations>

=item *

C<PlayerLatencyPolicies>

=back

=back

B<Results>

If successful, this operation returns a new C<GameSessionQueue> object
with an assigned queue ARN. Use the queue's name or ARN when submitting
new game session requests with StartGameSessionPlacement
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
or StartMatchmaking
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchmaking.html).

B<Learn more>

Design a game session queue
(https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html)

Create a game session queue
(https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html)

B<Related actions>

CreateGameSessionQueue
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html)
| DescribeGameSessionQueues
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html)
| UpdateGameSessionQueue
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html)
| DeleteGameSessionQueue
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html)
| All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateLocation

=over

=item LocationName => Str

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateLocation>

Returns: a L<Paws::GameLift::CreateLocationOutput> instance

Creates a custom location for use in an Anywhere fleet.


=head2 CreateMatchmakingConfiguration

=over

=item AcceptanceRequired => Bool

=item Name => Str

=item RequestTimeoutSeconds => Int

=item RuleSetName => Str

=item [AcceptanceTimeoutSeconds => Int]

=item [AdditionalPlayerCount => Int]

=item [BackfillMode => Str]

=item [CustomEventData => Str]

=item [Description => Str]

=item [FlexMatchMode => Str]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionQueueArns => ArrayRef[Str|Undef]]

=item [NotificationTarget => Str]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateMatchmakingConfiguration>

Returns: a L<Paws::GameLift::CreateMatchmakingConfigurationOutput> instance

Defines a new matchmaking configuration for use with FlexMatch. Whether
your are using FlexMatch with Amazon GameLift hosting or as a
standalone matchmaking service, the matchmaking configuration sets out
rules for matching players and forming teams. If you're also using
Amazon GameLift hosting, it defines how to start game sessions for each
match. Your matchmaking system can use multiple configurations to
handle different game scenarios. All matchmaking requests identify the
matchmaking configuration to use and provide player attributes
consistent with that configuration.

To create a matchmaking configuration, you must provide the following:
configuration name and FlexMatch mode (with or without Amazon GameLift
hosting); a rule set that specifies how to evaluate players and find
acceptable matches; whether player acceptance is required; and the
maximum time allowed for a matchmaking attempt. When using FlexMatch
with Amazon GameLift hosting, you also need to identify the game
session queue to use when starting a game session for the match.

In addition, you must set up an Amazon Simple Notification Service
topic to receive matchmaking notifications. Provide the topic ARN in
the matchmaking configuration.

B<Learn more>

Design a FlexMatch matchmaker
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html)

Set up FlexMatch event notification
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)


=head2 CreateMatchmakingRuleSet

=over

=item Name => Str

=item RuleSetBody => Str

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateMatchmakingRuleSet>

Returns: a L<Paws::GameLift::CreateMatchmakingRuleSetOutput> instance

Creates a new rule set for FlexMatch matchmaking. A rule set describes
the type of match to create, such as the number and size of teams. It
also sets the parameters for acceptable player matches, such as minimum
skill level or character type.

To create a matchmaking rule set, provide unique rule set name and the
rule set body in JSON format. Rule sets must be defined in the same
Region as the matchmaking configuration they are used with.

Since matchmaking rule sets cannot be edited, it is a good idea to
check the rule set syntax using ValidateMatchmakingRuleSet
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ValidateMatchmakingRuleSet.html)
before creating a new rule set.

B<Learn more>

=over

=item *

Build a rule set
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)

=item *

Design a matchmaker
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html)

=item *

Matchmaking with FlexMatch
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-intro.html)

=back



=head2 CreatePlayerSession

=over

=item GameSessionId => Str

=item PlayerId => Str

=item [PlayerData => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSession>

Returns: a L<Paws::GameLift::CreatePlayerSessionOutput> instance

Reserves an open player slot in a game session for a player. New player
sessions can be created in any game session with an open slot that is
in C<ACTIVE> status and has a player creation policy of C<ACCEPT_ALL>.
You can add a group of players to a game session with
CreatePlayerSessions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSessions.html)
.

To create a player session, specify a game session ID, player ID, and
optionally a set of player data.

If successful, a slot is reserved in the game session for the player
and a new C<PlayerSessions> object is returned with a player session
ID. The player references the player session ID when sending a
connection request to the game session, and the game server can use it
to validate the player reservation with the Amazon GameLift service.
Player sessions cannot be updated.

The maximum number of players per game session is 200. It is not
adjustable.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreatePlayerSessions

=over

=item GameSessionId => Str

=item PlayerIds => ArrayRef[Str|Undef]

=item [PlayerDataMap => L<Paws::GameLift::PlayerDataMap>]


=back

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSessions>

Returns: a L<Paws::GameLift::CreatePlayerSessionsOutput> instance

Reserves open slots in a game session for a group of players. New
player sessions can be created in any game session with an open slot
that is in C<ACTIVE> status and has a player creation policy of
C<ACCEPT_ALL>. To add a single player to a game session, use
CreatePlayerSession
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSession.html)

To create player sessions, specify a game session ID and a list of
player IDs. Optionally, provide a set of player data for each player
ID.

If successful, a slot is reserved in the game session for each player,
and new C<PlayerSession> objects are returned with player session IDs.
Each player references their player session ID when sending a
connection request to the game session, and the game server can use it
to validate the player reservation with the Amazon GameLift service.
Player sessions cannot be updated.

The maximum number of players per game session is 200. It is not
adjustable.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateScript

=over

=item [Name => Str]

=item [StorageLocation => L<Paws::GameLift::S3Location>]

=item [Tags => ArrayRef[L<Paws::GameLift::Tag>]]

=item [Version => Str]

=item [ZipFile => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateScript>

Returns: a L<Paws::GameLift::CreateScriptOutput> instance

Creates a new script record for your Amazon GameLift Realtime script.
Realtime scripts are JavaScript that provide configuration settings and
optional custom game logic for your game. The script is deployed when
you create a Amazon GameLift Realtime fleet to host your game sessions.
Script logic is executed during an active game session.

To create a new script record, specify a script name and provide the
script file(s). The script files and all dependencies must be zipped
into a single file. You can pull the zip file from either of these
locations:

=over

=item *

A locally available directory. Use the I<ZipFile> parameter for this
option.

=item *

An Amazon Simple Storage Service (Amazon S3) bucket under your Amazon
Web Services account. Use the I<StorageLocation> parameter for this
option. You'll need to have an Identity Access Management (IAM) role
that allows the Amazon GameLift service to access your S3 bucket.

=back

If the call is successful, a new script record is created with a unique
script ID. If the script file is provided as a local file, the file is
uploaded to an Amazon GameLift-owned S3 bucket and the script record's
storage location reflects this location. If the script file is provided
as an S3 bucket, Amazon GameLift accesses the file at this storage
location as needed for deployment.

B<Learn more>

Amazon GameLift Amazon GameLift Realtime
(https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

Set Up a Role for Amazon GameLift Access
(https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateVpcPeeringAuthorization

=over

=item GameLiftAwsAccountId => Str

=item PeerVpcId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::CreateVpcPeeringAuthorization>

Returns: a L<Paws::GameLift::CreateVpcPeeringAuthorizationOutput> instance

Requests authorization to create or delete a peer connection between
the VPC for your Amazon GameLift fleet and a virtual private cloud
(VPC) in your Amazon Web Services account. VPC peering enables the game
servers on your fleet to communicate directly with other Amazon Web
Services resources. After you've received authorization, use
CreateVpcPeeringConnection
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringConnection.html)
to establish the peering connection. For more information, see VPC
Peering with Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

You can peer with VPCs that are owned by any Amazon Web Services
account you have access to, including the account that you use to
manage your Amazon GameLift fleets. You cannot peer with VPCs that are
in different Regions.

To request authorization to create a connection, call this operation
from the Amazon Web Services account with the VPC that you want to peer
to your Amazon GameLift fleet. For example, to enable your game servers
to retrieve data from a DynamoDB table, use the account that manages
that DynamoDB resource. Identify the following values: (1) The ID of
the VPC that you want to peer with, and (2) the ID of the Amazon Web
Services account that you use to manage Amazon GameLift. If successful,
VPC peering is authorized for the specified VPC.

To request authorization to delete a connection, call this operation
from the Amazon Web Services account with the VPC that is peered with
your Amazon GameLift fleet. Identify the following values: (1) VPC ID
that you want to delete the peering connection for, and (2) ID of the
Amazon Web Services account that you use to manage Amazon GameLift.

The authorization remains valid for 24 hours unless it is canceled. You
must create or delete the peering connection while the authorization is
valid.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 CreateVpcPeeringConnection

=over

=item FleetId => Str

=item PeerVpcAwsAccountId => Str

=item PeerVpcId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::CreateVpcPeeringConnection>

Returns: a L<Paws::GameLift::CreateVpcPeeringConnectionOutput> instance

Establishes a VPC peering connection between a virtual private cloud
(VPC) in an Amazon Web Services account with the VPC for your Amazon
GameLift fleet. VPC peering enables the game servers on your fleet to
communicate directly with other Amazon Web Services resources. You can
peer with VPCs in any Amazon Web Services account that you have access
to, including the account that you use to manage your Amazon GameLift
fleets. You cannot peer with VPCs that are in different Regions. For
more information, see VPC Peering with Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

Before calling this operation to establish the peering connection, you
first need to use CreateVpcPeeringAuthorization
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html)
and identify the VPC you want to peer with. Once the authorization for
the specified VPC is issued, you have 24 hours to establish the
connection. These two operations handle all tasks necessary to peer the
two VPCs, including acceptance, updating routing tables, etc.

To establish the connection, call this operation from the Amazon Web
Services account that is used to manage the Amazon GameLift fleets.
Identify the following values: (1) The ID of the fleet you want to be
enable a VPC peering connection for; (2) The Amazon Web Services
account with the VPC that you want to peer with; and (3) The ID of the
VPC you want to peer with. This operation is asynchronous. If
successful, a connection request is created. You can use continuous
polling to track the request's status using
DescribeVpcPeeringConnections
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeVpcPeeringConnections.html)
, or by monitoring fleet events for success or failure using
DescribeFleetEvents
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html)
.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DeleteAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteAlias>

Returns: nothing

Deletes an alias. This operation removes all record of the alias. Game
clients attempting to access a server process using the deleted alias
receive an error. To delete an alias, specify the alias ID to be
deleted.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DeleteBuild

=over

=item BuildId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteBuild>

Returns: nothing

Deletes a build. This operation permanently deletes the build resource
and any uploaded build files. Deleting a build does not affect the
status of any active fleets using the build, but you can no longer
create new fleets with the deleted build.

To delete a build, specify the build ID.

B<Learn more>

Upload a Custom Server Build
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DeleteContainerFleet

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteContainerFleet>

Returns: a L<Paws::GameLift::DeleteContainerFleetOutput> instance

Deletes all resources and information related to a container fleet and
shuts down currently running fleet instances, including those in remote
locations. The container fleet must be in C<ACTIVE> status to be
deleted.

To delete a fleet, specify the fleet ID to be terminated. During the
deletion process, the fleet status is changed to C<DELETING>.

B<Learn more>

Setting up Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DeleteContainerGroupDefinition

=over

=item Name => Str

=item [VersionCountToRetain => Int]

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteContainerGroupDefinition>

Returns: a L<Paws::GameLift::DeleteContainerGroupDefinitionOutput> instance

Deletes a container group definition.

B<Request options:>

=over

=item *

Delete an entire container group definition, including all versions.
Specify the container group definition name, or use an ARN value
without the version number.

=item *

Delete a particular version. Specify the container group definition
name and a version number, or use an ARN value that includes the
version number.

=item *

Keep the newest versions and delete all older versions. Specify the
container group definition name and the number of versions to retain.
For example, set C<VersionCountToRetain> to 5 to delete all but the
five most recent versions.

=back

B<Result>

If successful, Amazon GameLift removes the container group definition
versions that you request deletion for. This request will fail for any
requested versions if the following is true:

=over

=item *

If the version is being used in an active fleet

=item *

If the version is being deployed to a fleet in a deployment that's
currently in progress.

=item *

If the version is designated as a rollback definition in a fleet
deployment that's currently in progress.

=back

B<Learn more>

=over

=item *

Manage a container group definition
(https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html)

=back



=head2 DeleteFleet

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteFleet>

Returns: nothing

Deletes all resources and information related to a fleet and shuts down
any currently running fleet instances, including those in remote
locations.

If the fleet being deleted has a VPC peering connection, you first need
to get a valid authorization (good for 24 hours) by calling
CreateVpcPeeringAuthorization
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html).
You don't need to explicitly delete the VPC peering connection.

To delete a fleet, specify the fleet ID to be terminated. During the
deletion process, the fleet status is changed to C<DELETING>. When
completed, the status switches to C<TERMINATED> and the fleet event
C<FLEET_DELETED> is emitted.

B<Learn more>

Setting up Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DeleteFleetLocations

=over

=item FleetId => Str

=item Locations => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteFleetLocations>

Returns: a L<Paws::GameLift::DeleteFleetLocationsOutput> instance

Removes locations from a multi-location fleet. When deleting a
location, all game server process and all instances that are still
active in the location are shut down.

To delete fleet locations, identify the fleet ID and provide a list of
the locations to be deleted.

If successful, GameLift sets the location status to C<DELETING>, and
begins to shut down existing server processes and terminate instances
in each location being deleted. When completed, the location status
changes to C<TERMINATED>.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DeleteGameServerGroup

=over

=item GameServerGroupName => Str

=item [DeleteOption => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteGameServerGroup>

Returns: a L<Paws::GameLift::DeleteGameServerGroupOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Terminates a game server group and permanently deletes the game server
group record. You have several options for how these resources are
impacted when deleting the game server group. Depending on the type of
delete operation selected, this operation might affect these resources:

=over

=item *

The game server group

=item *

The corresponding Auto Scaling group

=item *

All game servers that are currently running in the group

=back

To delete a game server group, identify the game server group to delete
and specify the type of delete operation to initiate. Game server
groups can only be deleted if they are in C<ACTIVE> or C<ERROR> status.

If the delete request is successful, a series of operations are kicked
off. The game server group status is changed to C<DELETE_SCHEDULED>,
which prevents new game servers from being registered and stops
automatic scaling activity. Once all game servers in the game server
group are deregistered, Amazon GameLift FleetIQ can begin deleting
resources. If any of the delete operations fail, the game server group
is placed in C<ERROR> status.

Amazon GameLift FleetIQ emits delete events to Amazon CloudWatch.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 DeleteGameSessionQueue

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteGameSessionQueue>

Returns: a L<Paws::GameLift::DeleteGameSessionQueueOutput> instance

Deletes a game session queue. Once a queue is successfully deleted,
unfulfilled StartGameSessionPlacement
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
requests that reference the queue will fail. To delete a queue, specify
the queue name.


=head2 DeleteLocation

=over

=item LocationName => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteLocation>

Returns: a L<Paws::GameLift::DeleteLocationOutput> instance

Deletes a custom location.

Before deleting a custom location, review any fleets currently using
the custom location and deregister the location if it is in use. For
more information, see DeregisterCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeregisterCompute.html).


=head2 DeleteMatchmakingConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteMatchmakingConfiguration>

Returns: a L<Paws::GameLift::DeleteMatchmakingConfigurationOutput> instance

Permanently removes a FlexMatch matchmaking configuration. To delete,
specify the configuration name. A matchmaking configuration cannot be
deleted if it is being used in any active matchmaking tickets.


=head2 DeleteMatchmakingRuleSet

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteMatchmakingRuleSet>

Returns: a L<Paws::GameLift::DeleteMatchmakingRuleSetOutput> instance

Deletes an existing matchmaking rule set. To delete the rule set,
provide the rule set name. Rule sets cannot be deleted if they are
currently being used by a matchmaking configuration.

B<Learn more>

=over

=item *

Build a rule set
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)

=back



=head2 DeleteScalingPolicy

=over

=item FleetId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteScalingPolicy>

Returns: nothing

Deletes a fleet scaling policy. Once deleted, the policy is no longer
in force and Amazon GameLift removes all record of it. To delete a
scaling policy, specify both the scaling policy name and the fleet ID
it is associated with.

To temporarily suspend scaling policies, use StopFleetActions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).
This operation suspends all policies for the fleet.


=head2 DeleteScript

=over

=item ScriptId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteScript>

Returns: nothing

Deletes a Realtime script. This operation permanently deletes the
script record. If script files were uploaded, they are also deleted
(files stored in an S3 bucket are not deleted).

To delete a script, specify the script ID. Before deleting a script, be
sure to terminate all fleets that are deployed with the script being
deleted. Fleet instances periodically check for script updates, and if
the script record no longer exists, the instance will go into an error
state and be unable to host game sessions.

B<Learn more>

Amazon GameLift Amazon GameLift Realtime
(https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DeleteVpcPeeringAuthorization

=over

=item GameLiftAwsAccountId => Str

=item PeerVpcId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteVpcPeeringAuthorization>

Returns: a L<Paws::GameLift::DeleteVpcPeeringAuthorizationOutput> instance

Cancels a pending VPC peering authorization for the specified VPC. If
you need to delete an existing VPC peering connection, use
DeleteVpcPeeringConnection
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteVpcPeeringConnection.html).

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DeleteVpcPeeringConnection

=over

=item FleetId => Str

=item VpcPeeringConnectionId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteVpcPeeringConnection>

Returns: a L<Paws::GameLift::DeleteVpcPeeringConnectionOutput> instance

Removes a VPC peering connection. To delete the connection, you must
have a valid authorization for the VPC peering connection that you want
to delete..

Once a valid authorization exists, call this operation from the Amazon
Web Services account that is used to manage the Amazon GameLift fleets.
Identify the connection to delete by the connection ID and fleet ID. If
successful, the connection is removed.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DeregisterCompute

=over

=item ComputeName => Str

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeregisterCompute>

Returns: a L<Paws::GameLift::DeregisterComputeOutput> instance

Removes a compute resource from an Anywhere fleet. Deregistered
computes can no longer host game sessions through Amazon GameLift. Use
this operation with an Anywhere fleet that doesn't use the Amazon
GameLift Agent For Anywhere fleets with the Agent, the Agent handles
all compute registry tasks for you.

To deregister a compute, call this operation from the compute that's
being deregistered and specify the compute name and the fleet ID.


=head2 DeregisterGameServer

=over

=item GameServerGroupName => Str

=item GameServerId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeregisterGameServer>

Returns: nothing

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Removes the game server from a game server group. As a result of this
operation, the deregistered game server can no longer be claimed and
will not be returned in a list of active game servers.

To deregister a game server, specify the game server group and game
server ID. If successful, this operation emits a CloudWatch event with
termination timestamp and reason.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 DescribeAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeAlias>

Returns: a L<Paws::GameLift::DescribeAliasOutput> instance

Retrieves properties for an alias. This operation returns all alias
metadata and settings. To get an alias's target fleet ID only, use
C<ResolveAlias>.

To get alias properties, specify the alias ID. If successful, the
requested alias record is returned.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeBuild

=over

=item BuildId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeBuild>

Returns: a L<Paws::GameLift::DescribeBuildOutput> instance

Retrieves properties for a custom game build. To request a build
resource, specify a build ID. If successful, an object containing the
build properties is returned.

B<Learn more>

Upload a Custom Server Build
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeCompute

=over

=item ComputeName => Str

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeCompute>

Returns: a L<Paws::GameLift::DescribeComputeOutput> instance

Retrieves properties for a specific compute resource in an Amazon
GameLift fleet. You can list all computes in a fleet by calling
ListCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html).

B<Request options>

Provide the fleet ID and compute name. The compute name varies
depending on the type of fleet.

=over

=item *

For a compute in a managed EC2 fleet, provide an instance ID. Each
instance in the fleet is a compute.

=item *

For a compute in a managed container fleet, provide a compute name. In
a container fleet, each game server container group on a fleet instance
is assigned a compute name.

=item *

For a compute in an Anywhere fleet, provide a registered compute name.
Anywhere fleet computes are created when you register a hosting
resource with the fleet.

=back

B<Results>

If successful, this operation returns details for the requested compute
resource. Depending on the fleet's compute type, the result includes
the following information:

=over

=item *

For a managed EC2 fleet, this operation returns information about the
EC2 instance.

=item *

For an Anywhere fleet, this operation returns information about the
registered compute.

=back



=head2 DescribeContainerFleet

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeContainerFleet>

Returns: a L<Paws::GameLift::DescribeContainerFleetOutput> instance

Retrieves the properties for a container fleet. When requesting
attributes for multiple fleets, use the pagination parameters to
retrieve results as a set of sequential pages.

B<Request options>

=over

=item *

Get container fleet properties for a single fleet. Provide either the
fleet ID or ARN value.

=back

B<Results>

If successful, a C<ContainerFleet> object is returned. This object
includes the fleet properties, including information about the most
recent deployment.

Some API operations limit the number of fleet IDs that allowed in one
request. If a request exceeds this limit, the request fails and the
error message contains the maximum allowed number.


=head2 DescribeContainerGroupDefinition

=over

=item Name => Str

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeContainerGroupDefinition>

Returns: a L<Paws::GameLift::DescribeContainerGroupDefinitionOutput> instance

Retrieves the properties of a container group definition, including all
container definitions in the group.

B<Request options:>

=over

=item *

Retrieve the latest version of a container group definition. Specify
the container group definition name only, or use an ARN value without a
version number.

=item *

Retrieve a particular version. Specify the container group definition
name and a version number, or use an ARN value that includes the
version number.

=back

B<Results:>

If successful, this operation returns the complete properties of a
container group definition version.

B<Learn more>

=over

=item *

Manage a container group definition
(https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html)

=back



=head2 DescribeEC2InstanceLimits

=over

=item [EC2InstanceType => Str]

=item [Location => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeEC2InstanceLimits>

Returns: a L<Paws::GameLift::DescribeEC2InstanceLimitsOutput> instance

Retrieves the instance limits and current utilization for an Amazon Web
Services Region or location. Instance limits control the number of
instances, per instance type, per location, that your Amazon Web
Services account can use. Learn more at Amazon EC2 Instance Types
(http://aws.amazon.com/ec2/instance-types/). The information returned
includes the maximum number of instances allowed and your account's
current usage across all fleets. This information can affect your
ability to scale your Amazon GameLift fleets. You can request a limit
increase for your account by using the B<Service limits> page in the
Amazon GameLift console.

Instance limits differ based on whether the instances are deployed in a
fleet's home Region or in a remote location. For remote locations,
limits also differ based on the combination of home Region and remote
location. All requests must specify an Amazon Web Services Region
(either explicitly or as your default settings). To get the limit for a
remote location, you must also specify the location. For example, the
following requests all return different results:

=over

=item *

Request specifies the Region C<ap-northeast-1> with no location. The
result is limits and usage data on all instance types that are deployed
in C<us-east-2>, by all of the fleets that reside in C<ap-northeast-1>.

=item *

Request specifies the Region C<us-east-1> with location
C<ca-central-1>. The result is limits and usage data on all instance
types that are deployed in C<ca-central-1>, by all of the fleets that
reside in C<us-east-2>. These limits do not affect fleets in any other
Regions that deploy instances to C<ca-central-1>.

=item *

Request specifies the Region C<eu-west-1> with location
C<ca-central-1>. The result is limits and usage data on all instance
types that are deployed in C<ca-central-1>, by all of the fleets that
reside in C<eu-west-1>.

=back

This operation can be used in the following ways:

=over

=item *

To get limit and usage data for all instance types that are deployed in
an Amazon Web Services Region by fleets that reside in the same Region:
Specify the Region only. Optionally, specify a single instance type to
retrieve information for.

=item *

To get limit and usage data for all instance types that are deployed to
a remote location by fleets that reside in different Amazon Web
Services Region: Provide both the Amazon Web Services Region and the
remote location. Optionally, specify a single instance type to retrieve
information for.

=back

If successful, an C<EC2InstanceLimits> object is returned with limits
and usage data for each requested instance type.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DescribeFleetAttributes

=over

=item [FleetIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetAttributes>

Returns: a L<Paws::GameLift::DescribeFleetAttributesOutput> instance

Retrieves core fleet-wide properties for fleets in an Amazon Web
Services Region. Properties include the computing hardware and
deployment configuration for instances in the fleet.

You can use this operation in the following ways:

=over

=item *

To get attributes for specific fleets, provide a list of fleet IDs or
fleet ARNs.

=item *

To get attributes for all fleets, do not provide a fleet identifier.

=back

When requesting attributes for multiple fleets, use the pagination
parameters to retrieve results as a set of sequential pages.

If successful, a C<FleetAttributes> object is returned for each fleet
requested, unless the fleet identifier is not found.

Some API operations limit the number of fleet IDs that allowed in one
request. If a request exceeds this limit, the request fails and the
error message contains the maximum allowed number.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DescribeFleetCapacity

=over

=item [FleetIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetCapacity>

Returns: a L<Paws::GameLift::DescribeFleetCapacityOutput> instance

Retrieves the resource capacity settings for one or more fleets. For a
container fleet, this operation also returns counts for game server
container groups.

With multi-location fleets, this operation retrieves data for the
fleet's home Region only. To retrieve capacity for remote locations,
see
https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html).

This operation can be used in the following ways:

=over

=item *

To get capacity data for one or more specific fleets, provide a list of
fleet IDs or fleet ARNs.

=item *

To get capacity data for all fleets, do not provide a fleet identifier.

=back

When requesting multiple fleets, use the pagination parameters to
retrieve results as a set of sequential pages.

If successful, a C<FleetCapacity> object is returned for each requested
fleet ID. Each C<FleetCapacity> object includes a C<Location> property,
which is set to the fleet's home Region. Capacity values are returned
only for fleets that currently exist.

Some API operations may limit the number of fleet IDs that are allowed
in one request. If a request exceeds this limit, the request fails and
the error message includes the maximum allowed.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

GameLift metrics for fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)


=head2 DescribeFleetDeployment

=over

=item FleetId => Str

=item [DeploymentId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetDeployment>

Returns: a L<Paws::GameLift::DescribeFleetDeploymentOutput> instance

Retrieves information about a managed container fleet deployment.

B<Request options>

=over

=item *

Get information about the latest deployment for a specific fleet.
Provide the fleet ID or ARN.

=item *

Get information about a specific deployment. Provide the fleet ID or
ARN and the deployment ID.

=back

B<Results>

If successful, a C<FleetDeployment> object is returned.


=head2 DescribeFleetEvents

=over

=item FleetId => Str

=item [EndTime => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetEvents>

Returns: a L<Paws::GameLift::DescribeFleetEventsOutput> instance

Retrieves entries from a fleet's event log. Fleet events are initiated
by changes in status, such as during fleet creation and termination,
changes in capacity, etc. If a fleet has multiple locations, events are
also initiated by changes to status and capacity in remote locations.

You can specify a time range to limit the result set. Use the
pagination parameters to retrieve results as a set of sequential pages.

If successful, a collection of event log entries matching the request
are returned.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DescribeFleetLocationAttributes

=over

=item FleetId => Str

=item [Limit => Int]

=item [Locations => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetLocationAttributes>

Returns: a L<Paws::GameLift::DescribeFleetLocationAttributesOutput> instance

Retrieves information on a fleet's remote locations, including
life-cycle status and any suspended fleet activity.

This operation can be used in the following ways:

=over

=item *

To get data for specific locations, provide a fleet identifier and a
list of locations. Location data is returned in the order that it is
requested.

=item *

To get data for all locations, provide a fleet identifier only.
Location data is returned in no particular order.

=back

When requesting attributes for multiple locations, use the pagination
parameters to retrieve results as a set of sequential pages.

If successful, a C<LocationAttributes> object is returned for each
requested location. If the fleet does not have a requested location, no
information is returned. This operation does not return the home
Region. To get information on a fleet's home Region, call
C<DescribeFleetAttributes>.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

Amazon GameLift service locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
for managed hosting


=head2 DescribeFleetLocationCapacity

=over

=item FleetId => Str

=item Location => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetLocationCapacity>

Returns: a L<Paws::GameLift::DescribeFleetLocationCapacityOutput> instance

Retrieves the resource capacity settings for a fleet location. The data
returned includes the current capacity (number of EC2 instances) and
some scaling settings for the requested fleet location. For a managed
container fleet, this operation also returns counts for game server
container groups.

Use this operation to retrieve capacity information for a fleet's
remote location or home Region (you can also retrieve home Region
capacity by calling C<DescribeFleetCapacity>).

To retrieve capacity data, identify a fleet and location.

If successful, a C<FleetCapacity> object is returned for the requested
fleet location.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

Amazon GameLift service locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
for managed hosting

GameLift metrics for fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)


=head2 DescribeFleetLocationUtilization

=over

=item FleetId => Str

=item Location => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetLocationUtilization>

Returns: a L<Paws::GameLift::DescribeFleetLocationUtilizationOutput> instance

Retrieves current usage data for a fleet location. Utilization data
provides a snapshot of current game hosting activity at the requested
location. Use this operation to retrieve utilization information for a
fleet's remote location or home Region (you can also retrieve home
Region utilization by calling C<DescribeFleetUtilization>).

To retrieve utilization data, identify a fleet and location.

If successful, a C<FleetUtilization> object is returned for the
requested fleet location.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

Amazon GameLift service locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
for managed hosting

GameLift metrics for fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)


=head2 DescribeFleetPortSettings

=over

=item FleetId => Str

=item [Location => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetPortSettings>

Returns: a L<Paws::GameLift::DescribeFleetPortSettingsOutput> instance

Retrieves a fleet's inbound connection permissions. Connection
permissions specify IP addresses and port settings that incoming
traffic can use to access server processes in the fleet. Game server
processes that are running in the fleet must use a port that falls
within this range.

Use this operation in the following ways:

=over

=item *

To retrieve the port settings for a fleet, identify the fleet's unique
identifier.

=item *

To check the status of recent updates to a fleet remote location,
specify the fleet ID and a location. Port setting updates can take time
to propagate across all locations.

=back

If successful, a set of C<IpPermission> objects is returned for the
requested fleet ID. When specifying a location, this operation returns
a pending status. If the requested fleet has been deleted, the result
set is empty.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 DescribeFleetUtilization

=over

=item [FleetIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetUtilization>

Returns: a L<Paws::GameLift::DescribeFleetUtilizationOutput> instance

Retrieves utilization statistics for one or more fleets. Utilization
data provides a snapshot of how the fleet's hosting resources are
currently being used. For fleets with remote locations, this operation
retrieves data for the fleet's home Region only. See
DescribeFleetLocationUtilization
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationUtilization.html)
to get utilization statistics for a fleet's remote locations.

This operation can be used in the following ways:

=over

=item *

To get utilization data for one or more specific fleets, provide a list
of fleet IDs or fleet ARNs.

=item *

To get utilization data for all fleets, do not provide a fleet
identifier.

=back

When requesting multiple fleets, use the pagination parameters to
retrieve results as a set of sequential pages.

If successful, a FleetUtilization
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_FleetUtilization.html)
object is returned for each requested fleet ID, unless the fleet
identifier is not found. Each fleet utilization object includes a
C<Location> property, which is set to the fleet's home Region.

Some API operations may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.

B<Learn more>

Setting up Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

GameLift Metrics for Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)


=head2 DescribeGameServer

=over

=item GameServerGroupName => Str

=item GameServerId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameServer>

Returns: a L<Paws::GameLift::DescribeGameServerOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Retrieves information for a registered game server. Information
includes game server status, health check info, and the instance that
the game server is running on.

To retrieve game server information, specify the game server ID. If
successful, the requested game server object is returned.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 DescribeGameServerGroup

=over

=item GameServerGroupName => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameServerGroup>

Returns: a L<Paws::GameLift::DescribeGameServerGroupOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Retrieves information on a game server group. This operation returns
only properties related to Amazon GameLift FleetIQ. To view or update
properties for the corresponding Auto Scaling group, such as launch
template, auto scaling policies, and maximum/minimum group size, access
the Auto Scaling group directly.

To get attributes for a game server group, provide a group name or ARN
value. If successful, a C<GameServerGroup> object is returned.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 DescribeGameServerInstances

=over

=item GameServerGroupName => Str

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameServerInstances>

Returns: a L<Paws::GameLift::DescribeGameServerInstancesOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Retrieves status information about the Amazon EC2 instances associated
with a Amazon GameLift FleetIQ game server group. Use this operation to
detect when instances are active or not available to host new game
servers.

To request status for all instances in the game server group, provide a
game server group ID only. To request status for specific instances,
provide the game server group ID and one or more instance IDs. Use the
pagination parameters to retrieve results in sequential segments. If
successful, a collection of C<GameServerInstance> objects is returned.

This operation is not designed to be called with every game server
claim request; this practice can cause you to exceed your API limit,
which results in errors. Instead, as a best practice, cache the results
and refresh your cache no more than once every 10 seconds.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 DescribeGameSessionDetails

=over

=item [AliasId => Str]

=item [FleetId => Str]

=item [GameSessionId => Str]

=item [Limit => Int]

=item [Location => Str]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionDetails>

Returns: a L<Paws::GameLift::DescribeGameSessionDetailsOutput> instance

Retrieves additional game session properties, including the game
session protection policy in force, a set of one or more game sessions
in a specific fleet location. You can optionally filter the results by
current game session status.

This operation can be used in the following ways:

=over

=item *

To retrieve details for all game sessions that are currently running on
all locations in a fleet, provide a fleet or alias ID, with an optional
status filter. This approach returns details from the fleet's home
Region and all remote locations.

=item *

To retrieve details for all game sessions that are currently running on
a specific fleet location, provide a fleet or alias ID and a location
name, with optional status filter. The location can be the fleet's home
Region or any remote location.

=item *

To retrieve details for a specific game session, provide the game
session ID. This approach looks for the game session ID in all fleets
that reside in the Amazon Web Services Region defined in the request.

=back

Use the pagination parameters to retrieve results as a set of
sequential pages.

If successful, a C<GameSessionDetail> object is returned for each game
session that matches the request.

B<Learn more>

Find a game session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeGameSessionPlacement

=over

=item PlacementId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionPlacement>

Returns: a L<Paws::GameLift::DescribeGameSessionPlacementOutput> instance

Retrieves information, including current status, about a game session
placement request.

To get game session placement details, specify the placement ID.

This operation is not designed to be continually called to track game
session status. This practice can cause you to exceed your API limit,
which results in errors. Instead, you must configure an Amazon Simple
Notification Service (SNS) topic to receive notifications from
FlexMatch or queues. Continuously polling with
C<DescribeGameSessionPlacement> should only be used for games in
development with low game session usage.


=head2 DescribeGameSessionQueues

=over

=item [Limit => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionQueues>

Returns: a L<Paws::GameLift::DescribeGameSessionQueuesOutput> instance

Retrieves the properties for one or more game session queues. When
requesting multiple queues, use the pagination parameters to retrieve
results as a set of sequential pages. When specifying a list of queues,
objects are returned only for queues that currently exist in the
Region.

B<Learn more>

View Your Queues
(https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html)


=head2 DescribeGameSessions

=over

=item [AliasId => Str]

=item [FleetId => Str]

=item [GameSessionId => Str]

=item [Limit => Int]

=item [Location => Str]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessions>

Returns: a L<Paws::GameLift::DescribeGameSessionsOutput> instance

Retrieves a set of one or more game sessions in a specific fleet
location. You can optionally filter the results by current game session
status.

This operation can be used in the following ways:

=over

=item *

To retrieve all game sessions that are currently running on all
locations in a fleet, provide a fleet or alias ID, with an optional
status filter. This approach returns all game sessions in the fleet's
home Region and all remote locations.

=item *

To retrieve all game sessions that are currently running on a specific
fleet location, provide a fleet or alias ID and a location name, with
optional status filter. The location can be the fleet's home Region or
any remote location.

=item *

To retrieve a specific game session, provide the game session ID. This
approach looks for the game session ID in all fleets that reside in the
Amazon Web Services Region defined in the request.

=back

Use the pagination parameters to retrieve results as a set of
sequential pages.

If successful, a C<GameSession> object is returned for each game
session that matches the request.

This operation is not designed to be continually called to track game
session status. This practice can cause you to exceed your API limit,
which results in errors. Instead, you must configure an Amazon Simple
Notification Service (SNS) topic to receive notifications from
FlexMatch or queues. Continuously polling with C<DescribeGameSessions>
should only be used for games in development with low game session
usage.

I<Available in Amazon GameLift Local.>

B<Learn more>

Find a game session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeInstances

=over

=item FleetId => Str

=item [InstanceId => Str]

=item [Limit => Int]

=item [Location => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeInstances>

Returns: a L<Paws::GameLift::DescribeInstancesOutput> instance

Retrieves information about the EC2 instances in an Amazon GameLift
managed fleet, including instance ID, connection data, and status. You
can use this operation with a multi-location fleet to get
location-specific instance information. As an alternative, use the
operations
https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute)
and
https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute)
to retrieve information for compute resources, including EC2 and
Anywhere fleets.

You can call this operation in the following ways:

=over

=item *

To get information on all instances in a fleet's home Region, specify
the fleet ID.

=item *

To get information on all instances in a fleet's remote location,
specify the fleet ID and location name.

=item *

To get information on a specific instance in a fleet, specify the fleet
ID and instance ID.

=back

Use the pagination parameters to retrieve results as a set of
sequential pages.

If successful, this operation returns C<Instance> objects for each
requested instance, listed in no particular order. If you call this
operation for an Anywhere fleet, you receive an
InvalidRequestException.

B<Learn more>

Remotely connect to fleet instances
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

Debug fleet issues
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeMatchmaking

=over

=item TicketIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeMatchmaking>

Returns: a L<Paws::GameLift::DescribeMatchmakingOutput> instance

Retrieves one or more matchmaking tickets. Use this operation to
retrieve ticket information, including--after a successful match is
made--connection information for the resulting new game session.

To request matchmaking tickets, provide a list of up to 10 ticket IDs.
If the request is successful, a ticket object is returned for each
requested ID that currently exists.

This operation is not designed to be continually called to track
matchmaking ticket status. This practice can cause you to exceed your
API limit, which results in errors. Instead, as a best practice, set up
an Amazon Simple Notification Service to receive notifications, and
provide the topic ARN in the matchmaking configuration.

B<Learn more>

Add FlexMatch to a game client
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)

Set Up FlexMatch event notification
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)


=head2 DescribeMatchmakingConfigurations

=over

=item [Limit => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [RuleSetName => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeMatchmakingConfigurations>

Returns: a L<Paws::GameLift::DescribeMatchmakingConfigurationsOutput> instance

Retrieves the details of FlexMatch matchmaking configurations.

This operation offers the following options: (1) retrieve all
matchmaking configurations, (2) retrieve configurations for a specified
list, or (3) retrieve all configurations that use a specified rule set
name. When requesting multiple items, use the pagination parameters to
retrieve results as a set of sequential pages.

If successful, a configuration is returned for each requested name.
When specifying a list of names, only configurations that currently
exist are returned.

B<Learn more>

Setting up FlexMatch matchmakers
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html)


=head2 DescribeMatchmakingRuleSets

=over

=item [Limit => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeMatchmakingRuleSets>

Returns: a L<Paws::GameLift::DescribeMatchmakingRuleSetsOutput> instance

Retrieves the details for FlexMatch matchmaking rule sets. You can
request all existing rule sets for the Region, or provide a list of one
or more rule set names. When requesting multiple items, use the
pagination parameters to retrieve results as a set of sequential pages.
If successful, a rule set is returned for each requested name.

B<Learn more>

=over

=item *

Build a rule set
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)

=back



=head2 DescribePlayerSessions

=over

=item [GameSessionId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [PlayerId => Str]

=item [PlayerSessionId => Str]

=item [PlayerSessionStatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribePlayerSessions>

Returns: a L<Paws::GameLift::DescribePlayerSessionsOutput> instance

Retrieves properties for one or more player sessions.

This action can be used in the following ways:

=over

=item *

To retrieve a specific player session, provide the player session ID
only.

=item *

To retrieve all player sessions in a game session, provide the game
session ID only.

=item *

To retrieve all player sessions for a specific player, provide a player
ID only.

=back

To request player sessions, specify either a player session ID, game
session ID, or player ID. You can filter this request by player session
status. If you provide a specific C<PlayerSessionId> or C<PlayerId>,
Amazon GameLift ignores the filter criteria. Use the pagination
parameters to retrieve results as a set of sequential pages.

If successful, a C<PlayerSession> object is returned for each session
that matches the request.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeRuntimeConfiguration

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeRuntimeConfiguration>

Returns: a L<Paws::GameLift::DescribeRuntimeConfigurationOutput> instance

Retrieves a fleet's runtime configuration settings. The runtime
configuration determines which server processes run, and how, on
computes in the fleet. For managed EC2 fleets, the runtime
configuration describes server processes that run on each fleet
instance. can update a fleet's runtime configuration at any time using
UpdateRuntimeConfiguration
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateRuntimeConfiguration.html).

To get the current runtime configuration for a fleet, provide the fleet
ID.

If successful, a C<RuntimeConfiguration> object is returned for the
requested fleet. If the requested fleet has been deleted, the result
set is empty.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

Running multiple processes on a fleet
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html)


=head2 DescribeScalingPolicies

=over

=item FleetId => Str

=item [Limit => Int]

=item [Location => Str]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeScalingPolicies>

Returns: a L<Paws::GameLift::DescribeScalingPoliciesOutput> instance

Retrieves all scaling policies applied to a fleet.

To get a fleet's scaling policies, specify the fleet ID. You can filter
this request by policy status, such as to retrieve only active scaling
policies. Use the pagination parameters to retrieve results as a set of
sequential pages. If successful, set of C<ScalingPolicy> objects is
returned for the fleet.

A fleet may have all of its scaling policies suspended. This operation
does not affect the status of the scaling policies, which remains
ACTIVE.


=head2 DescribeScript

=over

=item ScriptId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeScript>

Returns: a L<Paws::GameLift::DescribeScriptOutput> instance

Retrieves properties for a Realtime script.

To request a script record, specify the script ID. If successful, an
object containing the script properties is returned.

B<Learn more>

Amazon GameLift Amazon GameLift Realtime
(https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeVpcPeeringAuthorizations






Each argument is described in detail in: L<Paws::GameLift::DescribeVpcPeeringAuthorizations>

Returns: a L<Paws::GameLift::DescribeVpcPeeringAuthorizationsOutput> instance

Retrieves valid VPC peering authorizations that are pending for the
Amazon Web Services account. This operation returns all VPC peering
authorizations and requests for peering. This includes those initiated
and received by this account.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 DescribeVpcPeeringConnections

=over

=item [FleetId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeVpcPeeringConnections>

Returns: a L<Paws::GameLift::DescribeVpcPeeringConnectionsOutput> instance

Retrieves information on VPC peering connections. Use this operation to
get peering information for all fleets or for one specific fleet ID.

To retrieve connection information, call this operation from the Amazon
Web Services account that is used to manage the Amazon GameLift fleets.
Specify a fleet ID or leave the parameter empty to retrieve all
connection records. If successful, the retrieved information includes
both active and pending connections. Active connections identify the
IpV4 CIDR block that the VPC uses to connect.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 GetComputeAccess

=over

=item ComputeName => Str

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::GetComputeAccess>

Returns: a L<Paws::GameLift::GetComputeAccessOutput> instance

Requests authorization to remotely connect to a hosting resource in a
Amazon GameLift managed fleet. This operation is not used with Amazon
GameLift Anywhere fleets.

B<Request options>

Provide the fleet ID and compute name. The compute name varies
depending on the type of fleet.

=over

=item *

For a compute in a managed EC2 fleet, provide an instance ID. Each
instance in the fleet is a compute.

=item *

For a compute in a managed container fleet, provide a compute name. In
a container fleet, each game server container group on a fleet instance
is assigned a compute name.

=back

B<Results>

If successful, this operation returns a set of temporary Amazon Web
Services credentials, including a two-part access key and a session
token.

=over

=item *

With a managed EC2 fleet (where compute type is C<EC2>), use these
credentials with Amazon EC2 Systems Manager (SSM) to start a session
with the compute. For more details, see Starting a session (CLI)
(https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html#sessions-start-cli)
in the I<Amazon EC2 Systems Manager User Guide>.

=back



=head2 GetComputeAuthToken

=over

=item ComputeName => Str

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::GetComputeAuthToken>

Returns: a L<Paws::GameLift::GetComputeAuthTokenOutput> instance

Requests an authentication token from Amazon GameLift for a compute
resource in an Amazon GameLift fleet. Game servers that are running on
the compute use this token to communicate with the Amazon GameLift
service, such as when calling the Amazon GameLift server SDK action
C<InitSDK()>. Authentication tokens are valid for a limited time span,
so you need to request a fresh token before the current token expires.

B<Request options>

=over

=item *

For managed EC2 fleets (compute type C<EC2>), auth token retrieval and
refresh is handled automatically. All game servers that are running on
all fleet instances have access to a valid auth token.

=item *

For Anywhere fleets (compute type C<ANYWHERE>), if you're using the
Amazon GameLift Agent, auth token retrieval and refresh is handled
automatically for any compute where the Agent is running. If you're not
using the Agent, create a mechanism to retrieve and refresh auth tokens
for computes that are running game server processes.

=back

B<Learn more>

=over

=item *

Create an Anywhere fleet
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html)

=item *

Test your integration
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html)

=item *

Server SDK reference guides
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html)
(for version 5.x)

=back



=head2 GetGameSessionLogUrl

=over

=item GameSessionId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::GetGameSessionLogUrl>

Returns: a L<Paws::GameLift::GetGameSessionLogUrlOutput> instance

Retrieves the location of stored game session logs for a specified game
session on Amazon GameLift managed fleets. When a game session is
terminated, Amazon GameLift automatically stores the logs in Amazon S3
and retains them for 14 days. Use this URL to download the logs.

See the Amazon Web Services Service Limits
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
page for maximum log file sizes. Log files that exceed this limit are
not saved.

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 GetInstanceAccess

=over

=item FleetId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::GetInstanceAccess>

Returns: a L<Paws::GameLift::GetInstanceAccessOutput> instance

Requests authorization to remotely connect to an instance in an Amazon
GameLift managed fleet. Use this operation to connect to instances with
game servers that use Amazon GameLift server SDK 4.x or earlier. To
connect to instances with game servers that use server SDK 5.x or
later, call
https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess).

To request access to an instance, specify IDs for the instance and the
fleet it belongs to. You can retrieve instance IDs for a fleet by
calling DescribeInstances
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeInstances.html)
with the fleet ID.

If successful, this operation returns an IP address and credentials.
The returned credentials match the operating system of the instance, as
follows:

=over

=item *

For a Windows instance: returns a user name and secret (password) for
use with a Windows Remote Desktop client.

=item *

For a Linux instance: returns a user name and secret (RSA private key)
for use with an SSH client. You must save the secret to a C<.pem> file.
If you're using the CLI, see the example Get credentials for a Linux
instance
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess.html#API_GetInstanceAccess_Examples)
for tips on automatically saving the secret to a C<.pem> file.

=back

B<Learn more>

Remotely connect to fleet instances
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

Debug fleet issues
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ListAliases

=over

=item [Limit => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [RoutingStrategyType => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListAliases>

Returns: a L<Paws::GameLift::ListAliasesOutput> instance

Retrieves all aliases for this Amazon Web Services account. You can
filter the result set by alias name and/or routing strategy type. Use
the pagination parameters to retrieve results in sequential pages.

Returned aliases are not listed in any particular order.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ListBuilds

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListBuilds>

Returns: a L<Paws::GameLift::ListBuildsOutput> instance

Retrieves build resources for all builds associated with the Amazon Web
Services account in use. You can limit results to builds that are in a
specific status by using the C<Status> parameter. Use the pagination
parameters to retrieve results in a set of sequential pages.

Build resources are not listed in any particular order.

B<Learn more>

Upload a Custom Server Build
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ListCompute

=over

=item FleetId => Str

=item [ComputeStatus => Str]

=item [ContainerGroupDefinitionName => Str]

=item [Limit => Int]

=item [Location => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListCompute>

Returns: a L<Paws::GameLift::ListComputeOutput> instance

Retrieves information on the compute resources in an Amazon GameLift
fleet. Use the pagination parameters to retrieve results in a set of
sequential pages.

B<Request options>

=over

=item *

Retrieve a list of all computes in a fleet. Specify a fleet ID.

=item *

Retrieve a list of all computes in a specific fleet location. Specify a
fleet ID and location.

=back

B<Results>

If successful, this operation returns information on a set of computes.
Depending on the type of fleet, the result includes the following
information:

=over

=item *

For a managed EC2 fleet (compute type C<EC2>), this operation returns
information about the EC2 instance. Compute names are EC2 instance IDs.

=item *

For an Anywhere fleet (compute type C<ANYWHERE>), this operation
returns compute names and details from when the compute was registered
with C<RegisterCompute>. This includes C<GameLiftServiceSdkEndpoint> or
C<GameLiftAgentEndpoint>.

=back



=head2 ListContainerFleets

=over

=item [ContainerGroupDefinitionName => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListContainerFleets>

Returns: a L<Paws::GameLift::ListContainerFleetsOutput> instance

Retrieves a collection of container fleet resources in an Amazon Web
Services Region. For fleets that have multiple locations, this
operation retrieves fleets based on their home Region only.

B<Request options>

=over

=item *

Get a list of all fleets. Call this operation without specifying a
container group definition.

=item *

Get a list of fleets filtered by container group definition. Provide
the container group definition name or ARN value.

=item *

To get a list of all Amazon GameLift Realtime fleets with a specific
configuration script, provide the script ID.

=back

Use the pagination parameters to retrieve results as a set of
sequential pages.

If successful, this operation returns a collection of container fleets
that match the request parameters. A NextToken value is also returned
if there are more result pages to retrieve.

Fleet IDs are returned in no particular order.


=head2 ListContainerGroupDefinitions

=over

=item [ContainerGroupType => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListContainerGroupDefinitions>

Returns: a L<Paws::GameLift::ListContainerGroupDefinitionsOutput> instance

Retrieves container group definitions for the Amazon Web Services
account and Amazon Web Services Region. Use the pagination parameters
to retrieve results in a set of sequential pages.

This operation returns only the latest version of each definition. To
retrieve all versions of a container group definition, use
ListContainerGroupDefinitionVersions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html).

B<Request options:>

=over

=item *

Retrieve the most recent versions of all container group definitions.

=item *

Retrieve the most recent versions of all container group definitions,
filtered by type. Specify the container group type to filter on.

=back

B<Results:>

If successful, this operation returns the complete properties of a set
of container group definition versions that match the request.

This operation returns the list of container group definitions in no
particular order.


=head2 ListContainerGroupDefinitionVersions

=over

=item Name => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListContainerGroupDefinitionVersions>

Returns: a L<Paws::GameLift::ListContainerGroupDefinitionVersionsOutput> instance

Retrieves all versions of a container group definition. Use the
pagination parameters to retrieve results in a set of sequential pages.

B<Request options:>

=over

=item *

Get all versions of a specified container group definition. Specify the
container group definition name or ARN value. (If the ARN value has a
version number, it's ignored.)

=back

B<Results:>

If successful, this operation returns the complete properties of a set
of container group definition versions that match the request.

This operation returns the list of container group definitions in
descending version order (latest first).

B<Learn more>

=over

=item *

Manage a container group definition
(https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html)

=back



=head2 ListFleetDeployments

=over

=item [FleetId => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListFleetDeployments>

Returns: a L<Paws::GameLift::ListFleetDeploymentsOutput> instance

Retrieves a collection of container fleet deployments in an Amazon Web
Services Region. Use the pagination parameters to retrieve results as a
set of sequential pages.

B<Request options>

=over

=item *

Get a list of all deployments. Call this operation without specifying a
fleet ID.

=item *

Get a list of all deployments for a fleet. Specify the container fleet
ID or ARN value.

=back

B<Results>

If successful, this operation returns a list of deployments that match
the request parameters. A NextToken value is also returned if there are
more result pages to retrieve.

Deployments are returned starting with the latest.


=head2 ListFleets

=over

=item [BuildId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [ScriptId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListFleets>

Returns: a L<Paws::GameLift::ListFleetsOutput> instance

Retrieves a collection of fleet resources in an Amazon Web Services
Region. You can filter the result set to find only those fleets that
are deployed with a specific build or script. For fleets that have
multiple locations, this operation retrieves fleets based on their home
Region only.

You can use operation in the following ways:

=over

=item *

To get a list of all fleets in a Region, don't provide a build or
script identifier.

=item *

To get a list of all fleets where a specific game build is deployed,
provide the build ID.

=item *

To get a list of all Amazon GameLift Realtime fleets with a specific
configuration script, provide the script ID.

=back

Use the pagination parameters to retrieve results as a set of
sequential pages.

If successful, this operation returns a list of fleet IDs that match
the request parameters. A NextToken value is also returned if there are
more result pages to retrieve.

Fleet IDs are returned in no particular order.


=head2 ListGameServerGroups

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListGameServerGroups>

Returns: a L<Paws::GameLift::ListGameServerGroupsOutput> instance

Lists a game server groups.


=head2 ListGameServers

=over

=item GameServerGroupName => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListGameServers>

Returns: a L<Paws::GameLift::ListGameServersOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Retrieves information on all game servers that are currently active in
a specified game server group. You can opt to sort the list by game
server age. Use the pagination parameters to retrieve results in a set
of sequential segments.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 ListLocations

=over

=item [Filters => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListLocations>

Returns: a L<Paws::GameLift::ListLocationsOutput> instance

Lists all custom and Amazon Web Services locations.


=head2 ListScripts

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListScripts>

Returns: a L<Paws::GameLift::ListScriptsOutput> instance

Retrieves script records for all Realtime scripts that are associated
with the Amazon Web Services account in use.

B<Learn more>

Amazon GameLift Amazon GameLift Realtime
(https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::GameLift::ListTagsForResource>

Returns: a L<Paws::GameLift::ListTagsForResourceResponse> instance

Retrieves all tags assigned to a Amazon GameLift resource. Use resource
tags to organize Amazon Web Services resources for a range of purposes.
This operation handles the permissions necessary to manage tags for
Amazon GameLift resources that support tagging.

To list tags for a resource, specify the unique ARN value for the
resource.

B<Learn more>

Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>

Amazon Web Services Tagging Strategies
(http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 PutScalingPolicy

=over

=item FleetId => Str

=item MetricName => Str

=item Name => Str

=item [ComparisonOperator => Str]

=item [EvaluationPeriods => Int]

=item [PolicyType => Str]

=item [ScalingAdjustment => Int]

=item [ScalingAdjustmentType => Str]

=item [TargetConfiguration => L<Paws::GameLift::TargetConfiguration>]

=item [Threshold => Num]


=back

Each argument is described in detail in: L<Paws::GameLift::PutScalingPolicy>

Returns: a L<Paws::GameLift::PutScalingPolicyOutput> instance

Creates or updates a scaling policy for a fleet. Scaling policies are
used to automatically scale a fleet's hosting capacity to meet player
demand. An active scaling policy instructs Amazon GameLift to track a
fleet metric and automatically change the fleet's capacity when a
certain threshold is reached. There are two types of scaling policies:
target-based and rule-based. Use a target-based policy to quickly and
efficiently manage fleet scaling; this option is the most commonly
used. Use rule-based policies when you need to exert fine-grained
control over auto-scaling.

Fleets can have multiple scaling policies of each type in force at the
same time; you can have one target-based policy, one or multiple
rule-based scaling policies, or both. We recommend caution, however,
because multiple auto-scaling policies can have unintended
consequences.

Learn more about how to work with auto-scaling in Set Up Fleet
Automatic Scaling
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html).

B<Target-based policy>

A target-based policy tracks a single metric:
PercentAvailableGameSessions. This metric tells us how much of a
fleet's hosting capacity is ready to host game sessions but is not
currently in use. This is the fleet's buffer; it measures the
additional player demand that the fleet could handle at current
capacity. With a target-based policy, you set your ideal buffer size
and leave it to Amazon GameLift to take whatever action is needed to
maintain that target.

For example, you might choose to maintain a 10% buffer for a fleet that
has the capacity to host 100 simultaneous game sessions. This policy
tells Amazon GameLift to take action whenever the fleet's available
capacity falls below or rises above 10 game sessions. Amazon GameLift
will start new instances or stop unused instances in order to return to
the 10% buffer.

To create or update a target-based policy, specify a fleet ID and name,
and set the policy type to "TargetBased". Specify the metric to track
(PercentAvailableGameSessions) and reference a C<TargetConfiguration>
object with your desired buffer value. Exclude all other parameters. On
a successful request, the policy name is returned. The scaling policy
is automatically in force as soon as it's successfully created. If the
fleet's auto-scaling actions are temporarily suspended, the new policy
will be in force once the fleet actions are restarted.

B<Rule-based policy>

A rule-based policy tracks specified fleet metric, sets a threshold
value, and specifies the type of action to initiate when triggered.
With a rule-based policy, you can select from several available fleet
metrics. Each policy specifies whether to scale up or scale down (and
by how much), so you need one policy for each type of action.

For example, a policy may make the following statement: "If the
percentage of idle instances is greater than 20% for more than 15
minutes, then reduce the fleet capacity by 10%."

A policy's rule statement has the following structure:

If C<[MetricName]> is C<[ComparisonOperator]> C<[Threshold]> for
C<[EvaluationPeriods]> minutes, then C<[ScalingAdjustmentType]> to/by
C<[ScalingAdjustment]>.

To implement the example, the rule statement would look like this:

If C<[PercentIdleInstances]> is C<[GreaterThanThreshold]> C<[20]> for
C<[15]> minutes, then C<[PercentChangeInCapacity]> to/by C<[10]>.

To create or update a scaling policy, specify a unique combination of
name and fleet ID, and set the policy type to "RuleBased". Specify the
parameter values for a policy rule statement. On a successful request,
the policy name is returned. Scaling policies are automatically in
force as soon as they're successfully created. If the fleet's
auto-scaling actions are temporarily suspended, the new policy will be
in force once the fleet actions are restarted.


=head2 RegisterCompute

=over

=item ComputeName => Str

=item FleetId => Str

=item [CertificatePath => Str]

=item [DnsName => Str]

=item [IpAddress => Str]

=item [Location => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::RegisterCompute>

Returns: a L<Paws::GameLift::RegisterComputeOutput> instance

Registers a compute resource in an Amazon GameLift Anywhere fleet.

For an Anywhere fleet that's running the Amazon GameLift Agent, the
Agent handles all compute registry tasks for you. For an Anywhere fleet
that doesn't use the Agent, call this operation to register fleet
computes.

To register a compute, give the compute a name (must be unique within
the fleet) and specify the compute resource's DNS name or IP address.
Provide a fleet ID and a fleet location to associate with the compute
being registered. You can optionally include the path to a TLS
certificate on the compute resource.

If successful, this operation returns compute details, including an
Amazon GameLift SDK endpoint or Agent endpoint. Game server processes
running on the compute can use this endpoint to communicate with the
Amazon GameLift service. Each server process includes the SDK endpoint
in its call to the Amazon GameLift server SDK action C<InitSDK()>.

To view compute details, call DescribeCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute.html)
with the compute name.

B<Learn more>

=over

=item *

Create an Anywhere fleet
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html)

=item *

Test your integration
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html)

=item *

Server SDK reference guides
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html)
(for version 5.x)

=back



=head2 RegisterGameServer

=over

=item GameServerGroupName => Str

=item GameServerId => Str

=item InstanceId => Str

=item [ConnectionInfo => Str]

=item [GameServerData => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::RegisterGameServer>

Returns: a L<Paws::GameLift::RegisterGameServerOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Creates a new game server resource and notifies Amazon GameLift FleetIQ
that the game server is ready to host gameplay and players. This
operation is called by a game server process that is running on an
instance in a game server group. Registering game servers enables
Amazon GameLift FleetIQ to track available game servers and enables
game clients and services to claim a game server for a new game
session.

To register a game server, identify the game server group and instance
where the game server is running, and provide a unique identifier for
the game server. You can also include connection and game server data.

Once a game server is successfully registered, it is put in status
C<AVAILABLE>. A request to register a game server may fail if the
instance it is running on is in the process of shutting down as part of
instance balancing or scale-down activity.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 RequestUploadCredentials

=over

=item BuildId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::RequestUploadCredentials>

Returns: a L<Paws::GameLift::RequestUploadCredentialsOutput> instance

Retrieves a fresh set of credentials for use when uploading a new set
of game build files to Amazon GameLift's Amazon S3. This is done as
part of the build creation process; see CreateBuild
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html).

To request new credentials, specify the build ID as returned with an
initial C<CreateBuild> request. If successful, a new set of credentials
are returned, along with the S3 storage location associated with the
build ID.

B<Learn more>

Create a Build with Files in S3
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ResolveAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::ResolveAlias>

Returns: a L<Paws::GameLift::ResolveAliasOutput> instance

Attempts to retrieve a fleet ID that is associated with an alias.
Specify a unique alias identifier.

If the alias has a C<SIMPLE> routing strategy, Amazon GameLift returns
a fleet ID. If the alias has a C<TERMINAL> routing strategy, the result
is a C<TerminalRoutingStrategyException>.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ResumeGameServerGroup

=over

=item GameServerGroupName => Str

=item ResumeActions => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLift::ResumeGameServerGroup>

Returns: a L<Paws::GameLift::ResumeGameServerGroupOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Reinstates activity on a game server group after it has been suspended.
A game server group might be suspended by the SuspendGameServerGroup
operation, or it might be suspended involuntarily due to a
configuration problem. In the second case, you can manually resume
activity on the group once the configuration problem has been resolved.
Refer to the game server group status and status reason for more
information on why group activity is suspended.

To resume activity, specify a game server group ARN and the type of
activity to be resumed. If successful, a C<GameServerGroup> object is
returned showing that the resumed activity is no longer listed in
C<SuspendedActions>.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 SearchGameSessions

=over

=item [AliasId => Str]

=item [FilterExpression => Str]

=item [FleetId => Str]

=item [Limit => Int]

=item [Location => Str]

=item [NextToken => Str]

=item [SortExpression => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::SearchGameSessions>

Returns: a L<Paws::GameLift::SearchGameSessionsOutput> instance

Retrieves all active game sessions that match a set of search criteria
and sorts them into a specified order.

This operation is not designed to continually track game session status
because that practice can cause you to exceed your API limit and
generate errors. Instead, configure an Amazon Simple Notification
Service (Amazon SNS) topic to receive notifications from a matchmaker
or a game session placement queue.

When searching for game sessions, you specify exactly where you want to
search and provide a search filter expression, a sort expression, or
both. A search request can search only one fleet, but it can search all
of a fleet's locations.

This operation can be used in the following ways:

=over

=item *

To search all game sessions that are currently running on all locations
in a fleet, provide a fleet or alias ID. This approach returns game
sessions in the fleet's home Region and all remote locations that fit
the search criteria.

=item *

To search all game sessions that are currently running on a specific
fleet location, provide a fleet or alias ID and a location name. For
location, you can specify a fleet's home Region or any remote location.

=back

Use the pagination parameters to retrieve results as a set of
sequential pages.

If successful, a C<GameSession> object is returned for each game
session that matches the request. Search finds game sessions that are
in C<ACTIVE> status only. To retrieve information on game sessions in
other statuses, use DescribeGameSessions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessions.html).

To set search and sort criteria, create a filter expression using the
following game session attributes. For game session search examples,
see the Examples section of this topic.

=over

=item *

B<gameSessionId> -- A unique identifier for the game session. You can
use either a C<GameSessionId> or C<GameSessionArn> value.

=item *

B<gameSessionName> -- Name assigned to a game session. Game session
names do not need to be unique to a game session.

=item *

B<gameSessionProperties> -- A set of key-value pairs that can store
custom data in a game session. For example: C<{"Key": "difficulty",
"Value": "novice"}>. The filter expression must specify the
https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty)
-- a C<Key> and a string C<Value> to search for the game sessions.

For example, to search for the above key-value pair, specify the
following search filter: C<gameSessionProperties.difficulty =
"novice">. All game property values are searched as strings.

For examples of searching game sessions, see the ones below, and also
see Search game sessions by game property
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-search).

=item *

B<maximumSessions> -- Maximum number of player sessions allowed for a
game session.

=item *

B<creationTimeMillis> -- Value indicating when a game session was
created. It is expressed in Unix time as milliseconds.

=item *

B<playerSessionCount> -- Number of players currently connected to a
game session. This value changes rapidly as players join the session or
drop out.

=item *

B<hasAvailablePlayerSessions> -- Boolean value indicating whether a
game session has reached its maximum number of players. It is highly
recommended that all search requests include this filter attribute to
optimize search performance and return only sessions that players can
join.

=back

Returned values for C<playerSessionCount> and
C<hasAvailablePlayerSessions> change quickly as players join sessions
and others drop out. Results should be considered a snapshot in time.
Be sure to refresh search results often, and handle sessions that fill
up before a player can join.

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 StartFleetActions

=over

=item Actions => ArrayRef[Str|Undef]

=item FleetId => Str

=item [Location => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::StartFleetActions>

Returns: a L<Paws::GameLift::StartFleetActionsOutput> instance

Resumes certain types of activity on fleet instances that were
suspended with StopFleetActions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).
For multi-location fleets, fleet actions are managed separately for
each location. Currently, this operation is used to restart a fleet's
auto-scaling activity.

This operation can be used in the following ways:

=over

=item *

To restart actions on instances in the fleet's home Region, provide a
fleet ID and the type of actions to resume.

=item *

To restart actions on instances in one of the fleet's remote locations,
provide a fleet ID, a location name, and the type of actions to resume.

=back

If successful, Amazon GameLift once again initiates scaling events as
triggered by the fleet's scaling policies. If actions on the fleet
location were never stopped, this operation will have no effect.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 StartGameSessionPlacement

=over

=item GameSessionQueueName => Str

=item MaximumPlayerSessionCount => Int

=item PlacementId => Str

=item [DesiredPlayerSessions => ArrayRef[L<Paws::GameLift::DesiredPlayerSession>]]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionName => Str]

=item [PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]]

=item [PriorityConfigurationOverride => L<Paws::GameLift::PriorityConfigurationOverride>]


=back

Each argument is described in detail in: L<Paws::GameLift::StartGameSessionPlacement>

Returns: a L<Paws::GameLift::StartGameSessionPlacementOutput> instance

Makes a request to start a new game session using a game session queue.
When processing a placement request, Amazon GameLift looks for the best
possible available resource to host the game session, based on how the
queue is configured to prioritize factors such as resource cost,
latency, and location. After selecting an available resource, Amazon
GameLift prompts the resource to start a game session. A placement
request can include a list of players to create a set of player
sessions. The request can also include information to pass to the new
game session, such as to specify a game map or other options.

B<Request options>

Use this operation to make the following types of requests.

=over

=item *

Request a placement using the queue's default prioritization process
(see the default prioritization described in PriorityConfiguration
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html)).
Include these required parameters:

=over

=item *

C<GameSessionQueueName>

=item *

C<MaximumPlayerSessionCount>

=item *

C<PlacementID>

=back

=item *

Request a placement and prioritize based on latency. Include these
parameters:

=over

=item *

Required parameters C<GameSessionQueueName>,
C<MaximumPlayerSessionCount>, C<PlacementID>.

=item *

C<PlayerLatencies>. Include a set of latency values for destinations in
the queue. When a request includes latency data, Amazon GameLift
automatically reorder the queue's locations priority list based on
lowest available latency values. If a request includes latency data for
multiple players, Amazon GameLift calculates each location's average
latency for all players and reorders to find the lowest latency across
all players.

=item *

Don't include C<PriorityConfigurationOverride>.

=back

=over

=item *

Prioritize based on a custom list of locations. If you're using a queue
that's configured to prioritize location first (see
PriorityConfiguration
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html)
for game session queues), you can optionally use the
I<PriorityConfigurationOverride> parameter to substitute a different
location priority list for this placement request. Amazon GameLift
searches each location on the priority override list to find an
available hosting resource for the new game session. Specify a fallback
strategy to use in the event that Amazon GameLift fails to place the
game session in any of the locations on the override list.

=back

=item *

Request a placement and prioritized based on a custom list of
locations.

=item *

You can request new player sessions for a group of players. Include the
I<DesiredPlayerSessions> parameter and include at minimum a unique
player ID for each. You can also include player-specific data to pass
to the new game session.

=back

B<Result>

If successful, this operation generates a new game session placement
request and adds it to the game session queue for processing. You can
track the status of individual placement requests by calling
DescribeGameSessionPlacement
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionPlacement.html)
or by monitoring queue notifications. When the request status is
C<FULFILLED>, a new game session has started and the placement request
is updated with connection information for the game session (IP address
and port). If the request included player session data, Amazon GameLift
creates a player session for each player ID in the request.

The request results in a C<InvalidRequestException> in the following
situations:

=over

=item *

If the request includes both I<PlayerLatencies> and
I<PriorityConfigurationOverride> parameters.

=item *

If the request includes the I<PriorityConfigurationOverride> parameter
and specifies a queue that doesn't prioritize locations.

=back

Amazon GameLift continues to retry each placement request until it
reaches the queue's timeout setting. If a request times out, you can
resubmit the request to the same queue or try a different queue.


=head2 StartMatchBackfill

=over

=item ConfigurationName => Str

=item Players => ArrayRef[L<Paws::GameLift::Player>]

=item [GameSessionArn => Str]

=item [TicketId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::StartMatchBackfill>

Returns: a L<Paws::GameLift::StartMatchBackfillOutput> instance

Finds new players to fill open slots in currently running game
sessions. The backfill match process is essentially identical to the
process of forming new matches. Backfill requests use the same
matchmaker that was used to make the original match, and they provide
matchmaking data for all players currently in the game session.
FlexMatch uses this information to select new players so that
backfilled match continues to meet the original match requirements.

When using FlexMatch with Amazon GameLift managed hosting, you can
request a backfill match from a client service by calling this
operation with a C<GameSessions> ID. You also have the option of making
backfill requests directly from your game server. In response to a
request, FlexMatch creates player sessions for the new players, updates
the C<GameSession> resource, and sends updated matchmaking data to the
game server. You can request a backfill match at any point after a game
session is started. Each game session can have only one active backfill
request at a time; a subsequent request automatically replaces the
earlier request.

When using FlexMatch as a standalone component, request a backfill
match by calling this operation without a game session identifier. As
with newly formed matches, matchmaking results are returned in a
matchmaking event so that your game can update the game session that is
being backfilled.

To request a backfill match, specify a unique ticket ID, the original
matchmaking configuration, and matchmaking data for all current players
in the game session being backfilled. Optionally, specify the
C<GameSession> ARN. If successful, a match backfill ticket is created
and returned with status set to QUEUED. Track the status of backfill
tickets using the same method for tracking tickets for new matches.

Only game sessions created by FlexMatch are supported for match
backfill.

B<Learn more>

Backfill existing games with FlexMatch
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html)

Matchmaking events
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html)
(reference)

How Amazon GameLift FlexMatch works
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html)


=head2 StartMatchmaking

=over

=item ConfigurationName => Str

=item Players => ArrayRef[L<Paws::GameLift::Player>]

=item [TicketId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::StartMatchmaking>

Returns: a L<Paws::GameLift::StartMatchmakingOutput> instance

Uses FlexMatch to create a game match for a group of players based on
custom matchmaking rules. With games that use Amazon GameLift managed
hosting, this operation also triggers Amazon GameLift to find hosting
resources and start a new game session for the new match. Each
matchmaking request includes information on one or more players and
specifies the FlexMatch matchmaker to use. When a request is for
multiple players, FlexMatch attempts to build a match that includes all
players in the request, placing them in the same team and finding
additional players as needed to fill the match.

To start matchmaking, provide a unique ticket ID, specify a matchmaking
configuration, and include the players to be matched. You must also
include any player attributes that are required by the matchmaking
configuration's rule set. If successful, a matchmaking ticket is
returned with status set to C<QUEUED>.

Track matchmaking events to respond as needed and acquire game session
connection information for successfully completed matches. Ticket
status updates are tracked using event notification through Amazon
Simple Notification Service, which is defined in the matchmaking
configuration.

B<Learn more>

Add FlexMatch to a game client
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)

Set Up FlexMatch event notification
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)

How Amazon GameLift FlexMatch works
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html)


=head2 StopFleetActions

=over

=item Actions => ArrayRef[Str|Undef]

=item FleetId => Str

=item [Location => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::StopFleetActions>

Returns: a L<Paws::GameLift::StopFleetActionsOutput> instance

Suspends certain types of activity in a fleet location. Currently, this
operation is used to stop auto-scaling activity. For multi-location
fleets, fleet actions are managed separately for each location.

Stopping fleet actions has several potential purposes. It allows you to
temporarily stop auto-scaling activity but retain your scaling policies
for use in the future. For multi-location fleets, you can set up
fleet-wide auto-scaling, and then opt out of it for certain locations.

This operation can be used in the following ways:

=over

=item *

To stop actions on instances in the fleet's home Region, provide a
fleet ID and the type of actions to suspend.

=item *

To stop actions on instances in one of the fleet's remote locations,
provide a fleet ID, a location name, and the type of actions to
suspend.

=back

If successful, Amazon GameLift no longer initiates scaling events
except in response to manual changes using UpdateFleetCapacity
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html).
To restart fleet actions again, call StartFleetActions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartFleetActions.html).

B<Learn more>

Setting up Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 StopGameSessionPlacement

=over

=item PlacementId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::StopGameSessionPlacement>

Returns: a L<Paws::GameLift::StopGameSessionPlacementOutput> instance

Cancels a game session placement that's in C<PENDING> status. To stop a
placement, provide the placement ID value.

Results

If successful, this operation removes the placement request from the
queue and moves the C<GameSessionPlacement> to C<CANCELLED> status.

This operation results in an C<InvalidRequestExecption> (400) error if
a game session has already been created for this placement. You can
clean up an unneeded game session by calling TerminateGameSession
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_TerminateGameSession).


=head2 StopMatchmaking

=over

=item TicketId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::StopMatchmaking>

Returns: a L<Paws::GameLift::StopMatchmakingOutput> instance

Cancels a matchmaking ticket or match backfill ticket that is currently
being processed. To stop the matchmaking operation, specify the ticket
ID. If successful, work on the ticket is stopped, and the ticket status
is changed to C<CANCELLED>.

This call is also used to turn off automatic backfill for an individual
game session. This is for game sessions that are created with a
matchmaking configuration that has automatic backfill enabled. The
ticket ID is included in the C<MatchmakerData> of an updated game
session object, which is provided to the game server.

If the operation is successful, the service sends back an empty JSON
struct with the HTTP 200 response (not an empty HTTP body).

B<Learn more>

Add FlexMatch to a game client
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)


=head2 SuspendGameServerGroup

=over

=item GameServerGroupName => Str

=item SuspendActions => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLift::SuspendGameServerGroup>

Returns: a L<Paws::GameLift::SuspendGameServerGroupOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Temporarily stops activity on a game server group without terminating
instances or the game server group. You can restart activity by calling
ResumeGameServerGroup. You can suspend the following activity:

=over

=item *

B<Instance type replacement> - This activity evaluates the current game
hosting viability of all Spot instance types that are defined for the
game server group. It updates the Auto Scaling group to remove
nonviable Spot Instance types, which have a higher chance of game
server interruptions. It then balances capacity across the remaining
viable Spot Instance types. When this activity is suspended, the Auto
Scaling group continues with its current balance, regardless of
viability. Instance protection, utilization metrics, and capacity
scaling activities continue to be active.

=back

To suspend activity, specify a game server group ARN and the type of
activity to be suspended. If successful, a C<GameServerGroup> object is
returned showing that the activity is listed in C<SuspendedActions>.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::GameLift::Tag>]


=back

Each argument is described in detail in: L<Paws::GameLift::TagResource>

Returns: a L<Paws::GameLift::TagResourceResponse> instance

Assigns a tag to an Amazon GameLift resource. You can use tags to
organize resources, create IAM permissions policies to manage access to
groups of resources, customize Amazon Web Services cost breakdowns, and
more. This operation handles the permissions necessary to manage tags
for Amazon GameLift resources that support tagging.

To add a tag to a resource, specify the unique ARN value for the
resource and provide a tag list containing one or more tags. The
operation succeeds even if the list includes tags that are already
assigned to the resource.

B<Learn more>

Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>

Amazon Web Services Tagging Strategies
(http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 TerminateGameSession

=over

=item GameSessionId => Str

=item TerminationMode => Str


=back

Each argument is described in detail in: L<Paws::GameLift::TerminateGameSession>

Returns: a L<Paws::GameLift::TerminateGameSessionOutput> instance

Ends a game session that's currently in progress. Use this action to
terminate any game session that isn't in C<ERROR> status. Terminating a
game session is the most efficient way to free up a server process when
it's hosting a game session that's in a bad state or not ending
properly. You can use this action to terminate a game session that's
being hosted on any type of Amazon GameLift fleet compute, including
computes for managed EC2, managed container, and Anywhere fleets. The
game server must be integrated with Amazon GameLift server SDK 5.x or
greater.

B<Request options>

Request termination for a single game session. Provide the game session
ID and the termination mode. There are two potential methods for
terminating a game session:

=over

=item *

Initiate a graceful termination using the normal game session shutdown
sequence. With this mode, the Amazon GameLift service prompts the
server process that's hosting the game session by calling the server
SDK callback method C<OnProcessTerminate()>. The callback
implementation is part of the custom game server code. It might involve
a variety of actions to gracefully end a game session, such as
notifying players, before stopping the server process.

=item *

Force an immediate game session termination. With this mode, the Amazon
GameLift service takes action to stop the server process, which ends
the game session without the normal game session shutdown sequence.

=back

B<Results>

If successful, game session termination is initiated. During this
activity, the game session status is changed to C<TERMINATING>. When
completed, the server process that was hosting the game session has
been stopped and replaced with a new server process that's ready to
host a new game session. The old game session's status is changed to
C<TERMINATED> with a status reason that indicates the termination
method used.

B<Learn more>

Add Amazon GameLift to your game server
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html)

Amazon GameLift server SDK 5 reference guide for
C<OnProcessTerminate()> (C++
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-cpp-initsdk.html))
(C#
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-csharp-initsdk.html))
(Unreal
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-unreal-initsdk.html))
(Go
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk-go-initsdk.html))


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLift::UntagResource>

Returns: a L<Paws::GameLift::UntagResourceResponse> instance

Removes a tag assigned to a Amazon GameLift resource. You can use
resource tags to organize Amazon Web Services resources for a range of
purposes. This operation handles the permissions necessary to manage
tags for Amazon GameLift resources that support tagging.

To remove a tag from a resource, specify the unique ARN value for the
resource and provide a string list containing one or more tags to
remove. This operation succeeds even if the list includes tags that
aren't assigned to the resource.

B<Learn more>

Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>

Amazon Web Services Tagging Strategies
(http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 UpdateAlias

=over

=item AliasId => Str

=item [Description => Str]

=item [Name => Str]

=item [RoutingStrategy => L<Paws::GameLift::RoutingStrategy>]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateAlias>

Returns: a L<Paws::GameLift::UpdateAliasOutput> instance

Updates properties for an alias. Specify the unique identifier of the
alias to be updated and the new property values. When reassigning an
alias to a new fleet, provide an updated routing strategy. If
successful, the updated alias record is returned.

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 UpdateBuild

=over

=item BuildId => Str

=item [Name => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateBuild>

Returns: a L<Paws::GameLift::UpdateBuildOutput> instance

Updates metadata in a build resource, including the build name and
version. To update the metadata, specify the build ID to update and
provide the new values. If successful, a build object containing the
updated metadata is returned.

B<Learn more>

Upload a Custom Server Build
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 UpdateContainerFleet

=over

=item FleetId => Str

=item [DeploymentConfiguration => L<Paws::GameLift::DeploymentConfiguration>]

=item [Description => Str]

=item [GameServerContainerGroupDefinitionName => Str]

=item [GameServerContainerGroupsPerInstance => Int]

=item [GameSessionCreationLimitPolicy => L<Paws::GameLift::GameSessionCreationLimitPolicy>]

=item [InstanceConnectionPortRange => L<Paws::GameLift::ConnectionPortRange>]

=item [InstanceInboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [InstanceInboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [LogConfiguration => L<Paws::GameLift::LogConfiguration>]

=item [MetricGroups => ArrayRef[Str|Undef]]

=item [NewGameSessionProtectionPolicy => Str]

=item [PerInstanceContainerGroupDefinitionName => Str]

=item [RemoveAttributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateContainerFleet>

Returns: a L<Paws::GameLift::UpdateContainerFleetOutput> instance

Updates the properties of a managed container fleet. Depending on the
properties being updated, this operation might initiate a fleet
deployment. You can track deployments for a fleet using
https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html).

B<Request options>

As with CreateContainerFleet, many fleet properties use common defaults
or are calculated based on the fleet's container group definitions.

=over

=item *

Update fleet properties that result in a fleet deployment. Include only
those properties that you want to change. Specify deployment
configuration settings.

=item *

Update fleet properties that don't result in a fleet deployment.
Include only those properties that you want to change.

=back

Changes to the following properties initiate a fleet deployment:

=over

=item *

C<GameServerContainerGroupDefinition>

=item *

C<PerInstanceContainerGroupDefinition>

=item *

C<GameServerContainerGroupsPerInstance>

=item *

C<InstanceInboundPermissions>

=item *

C<InstanceConnectionPortRange>

=item *

C<LogConfiguration>

=back

B<Results>

If successful, this operation updates the container fleet resource, and
might initiate a new deployment of fleet resources using the deployment
configuration provided. A deployment replaces existing fleet instances
with new instances that are deployed with the updated fleet properties.
The fleet is placed in C<UPDATING> status until the deployment is
complete, then return to C<ACTIVE>.

You can have only one update deployment active at a time for a fleet.
If a second update request initiates a deployment while another
deployment is in progress, the first deployment is cancelled.


=head2 UpdateContainerGroupDefinition

=over

=item Name => Str

=item [GameServerContainerDefinition => L<Paws::GameLift::GameServerContainerDefinitionInput>]

=item [OperatingSystem => Str]

=item [SourceVersionNumber => Int]

=item [SupportContainerDefinitions => ArrayRef[L<Paws::GameLift::SupportContainerDefinitionInput>]]

=item [TotalMemoryLimitMebibytes => Int]

=item [TotalVcpuLimit => Num]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateContainerGroupDefinition>

Returns: a L<Paws::GameLift::UpdateContainerGroupDefinitionOutput> instance

Updates properties in an existing container group definition. This
operation doesn't replace the definition. Instead, it creates a new
version of the definition and saves it separately. You can access all
versions that you choose to retain.

The only property you can't update is the container group type.

B<Request options:>

=over

=item *

Update based on the latest version of the container group definition.
Specify the container group definition name only, or use an ARN value
without a version number. Provide updated values for the properties
that you want to change only. All other values remain the same as the
latest version.

=item *

Update based on a specific version of the container group definition.
Specify the container group definition name and a source version
number, or use an ARN value with a version number. Provide updated
values for the properties that you want to change only. All other
values remain the same as the source version.

=item *

Change a game server container definition. Provide the updated
container definition.

=item *

Add or change a support container definition. Provide a complete set of
container definitions, including the updated definition.

=item *

Remove a support container definition. Provide a complete set of
container definitions, excluding the definition to remove. If the
container group has only one support container definition, provide an
empty set.

=back

B<Results:>

If successful, this operation returns the complete properties of the
new container group definition version.

If the container group definition version is used in an active fleets,
the update automatically initiates a new fleet deployment of the new
version. You can track a fleet's deployments using ListFleetDeployments
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListFleetDeployments.html).


=head2 UpdateFleetAttributes

=over

=item FleetId => Str

=item [AnywhereConfiguration => L<Paws::GameLift::AnywhereConfiguration>]

=item [Description => Str]

=item [MetricGroups => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [NewGameSessionProtectionPolicy => Str]

=item [ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetAttributes>

Returns: a L<Paws::GameLift::UpdateFleetAttributesOutput> instance

Updates a fleet's mutable attributes, such as game session protection
and resource creation limits.

To update fleet attributes, specify the fleet ID and the property
values that you want to change. If successful, Amazon GameLift returns
the identifiers for the updated fleet.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 UpdateFleetCapacity

=over

=item FleetId => Str

=item [DesiredInstances => Int]

=item [Location => Str]

=item [MaxSize => Int]

=item [MinSize => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetCapacity>

Returns: a L<Paws::GameLift::UpdateFleetCapacityOutput> instance

Updates capacity settings for a managed EC2 fleet or managed container
fleet. For these fleets, you adjust capacity by changing the number of
instances in the fleet. Fleet capacity determines the number of game
sessions and players that the fleet can host based on its
configuration. For fleets with multiple locations, use this operation
to manage capacity settings in each location individually.

Use this operation to set these fleet capacity properties:

=over

=item *

Minimum/maximum size: Set hard limits on the number of Amazon EC2
instances allowed. If Amazon GameLift receives a request--either
through manual update or automatic scaling--it won't change the
capacity to a value outside of this range.

=item *

Desired capacity: As an alternative to automatic scaling, manually set
the number of Amazon EC2 instances to be maintained. Before changing a
fleet's desired capacity, check the maximum capacity of the fleet's
Amazon EC2 instance type by calling DescribeEC2InstanceLimits
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeEC2InstanceLimits.html).

=back

To update capacity for a fleet's home Region, or if the fleet has no
remote locations, omit the C<Location> parameter. The fleet must be in
C<ACTIVE> status.

To update capacity for a fleet's remote location, set the C<Location>
parameter to the location to update. The location must be in C<ACTIVE>
status.

If successful, Amazon GameLift updates the capacity settings and
returns the identifiers for the updated fleet and/or location. If a
requested change to desired capacity exceeds the instance type's limit,
the C<LimitExceeded> exception occurs.

Updates often prompt an immediate change in fleet capacity, such as
when current capacity is different than the new desired capacity or
outside the new limits. In this scenario, Amazon GameLift automatically
initiates steps to add or remove instances in the fleet location. You
can track a fleet's current capacity by calling DescribeFleetCapacity
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html)
or DescribeFleetLocationCapacity
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html).

B<Learn more>

Scaling fleet capacity
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html)


=head2 UpdateFleetPortSettings

=over

=item FleetId => Str

=item [InboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [InboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetPortSettings>

Returns: a L<Paws::GameLift::UpdateFleetPortSettingsOutput> instance

Updates permissions that allow inbound traffic to connect to game
sessions in the fleet.

To update settings, specify the fleet ID to be updated and specify the
changes to be made. List the permissions you want to add in
C<InboundPermissionAuthorizations>, and permissions you want to remove
in C<InboundPermissionRevocations>. Permissions to be removed must
match existing fleet permissions.

If successful, the fleet ID for the updated fleet is returned. For
fleets with remote locations, port setting updates can take time to
propagate across all locations. You can check the status of updates in
each location by calling C<DescribeFleetPortSettings> with a location
name.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 UpdateGameServer

=over

=item GameServerGroupName => Str

=item GameServerId => Str

=item [GameServerData => Str]

=item [HealthCheck => Str]

=item [UtilizationStatus => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateGameServer>

Returns: a L<Paws::GameLift::UpdateGameServerOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Updates information about a registered game server to help Amazon
GameLift FleetIQ track game server availability. This operation is
called by a game server process that is running on an instance in a
game server group.

Use this operation to update the following types of game server
information. You can make all three types of updates in the same
request:

=over

=item *

To update the game server's utilization status from C<AVAILABLE> (when
the game server is available to be claimed) to C<UTILIZED> (when the
game server is currently hosting games). Identify the game server and
game server group and specify the new utilization status. You can't
change the status from to C<UTILIZED> to C<AVAILABLE> .

=item *

To report health status, identify the game server and game server group
and set health check to C<HEALTHY>. If a game server does not report
health status for a certain length of time, the game server is no
longer considered healthy. As a result, it will be eventually
deregistered from the game server group to avoid affecting utilization
metrics. The best practice is to report health every 60 seconds.

=item *

To change game server metadata, provide updated game server data.

=back

Once a game server is successfully updated, the relevant statuses and
timestamps are updated.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 UpdateGameServerGroup

=over

=item GameServerGroupName => Str

=item [BalancingStrategy => Str]

=item [GameServerProtectionPolicy => Str]

=item [InstanceDefinitions => ArrayRef[L<Paws::GameLift::InstanceDefinition>]]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateGameServerGroup>

Returns: a L<Paws::GameLift::UpdateGameServerGroupOutput> instance

B<This operation is used with the Amazon GameLift FleetIQ solution and
game server groups.>

Updates Amazon GameLift FleetIQ-specific properties for a game server
group. Many Auto Scaling group properties are updated on the Auto
Scaling group directly, including the launch template, Auto Scaling
policies, and maximum/minimum/desired instance counts.

To update the game server group, specify the game server group ID and
provide the updated values. Before applying the updates, the new values
are validated to ensure that Amazon GameLift FleetIQ can continue to
perform instance balancing activity. If successful, a
C<GameServerGroup> object is returned.

B<Learn more>

Amazon GameLift FleetIQ Guide
(https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)


=head2 UpdateGameSession

=over

=item GameSessionId => Str

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [MaximumPlayerSessionCount => Int]

=item [Name => Str]

=item [PlayerSessionCreationPolicy => Str]

=item [ProtectionPolicy => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateGameSession>

Returns: a L<Paws::GameLift::UpdateGameSessionOutput> instance

Updates the mutable properties of a game session.

To update a game session, specify the game session ID and the values
you want to change.

If successful, the updated C<GameSession> object is returned.

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 UpdateGameSessionQueue

=over

=item Name => Str

=item [CustomEventData => Str]

=item [Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]]

=item [FilterConfiguration => L<Paws::GameLift::FilterConfiguration>]

=item [NotificationTarget => Str]

=item [PlayerLatencyPolicies => ArrayRef[L<Paws::GameLift::PlayerLatencyPolicy>]]

=item [PriorityConfiguration => L<Paws::GameLift::PriorityConfiguration>]

=item [TimeoutInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateGameSessionQueue>

Returns: a L<Paws::GameLift::UpdateGameSessionQueueOutput> instance

Updates the configuration of a game session queue, which determines how
the queue processes new game session requests. To update settings,
specify the queue name to be updated and provide the new settings. When
updating destinations, provide a complete list of destinations.

B<Learn more>

Using Multi-Region Queues
(https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html)


=head2 UpdateMatchmakingConfiguration

=over

=item Name => Str

=item [AcceptanceRequired => Bool]

=item [AcceptanceTimeoutSeconds => Int]

=item [AdditionalPlayerCount => Int]

=item [BackfillMode => Str]

=item [CustomEventData => Str]

=item [Description => Str]

=item [FlexMatchMode => Str]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionQueueArns => ArrayRef[Str|Undef]]

=item [NotificationTarget => Str]

=item [RequestTimeoutSeconds => Int]

=item [RuleSetName => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateMatchmakingConfiguration>

Returns: a L<Paws::GameLift::UpdateMatchmakingConfigurationOutput> instance

Updates settings for a FlexMatch matchmaking configuration. These
changes affect all matches and game sessions that are created after the
update. To update settings, specify the configuration name to be
updated and provide the new settings.

B<Learn more>

Design a FlexMatch matchmaker
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html)


=head2 UpdateRuntimeConfiguration

=over

=item FleetId => Str

=item RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateRuntimeConfiguration>

Returns: a L<Paws::GameLift::UpdateRuntimeConfigurationOutput> instance

Updates the runtime configuration for the specified fleet. The runtime
configuration tells Amazon GameLift how to launch server processes on
computes in managed EC2 and Anywhere fleets. You can update a fleet's
runtime configuration at any time after the fleet is created; it does
not need to be in C<ACTIVE> status.

To update runtime configuration, specify the fleet ID and provide a
C<RuntimeConfiguration> with an updated set of server process
configurations.

If successful, the fleet's runtime configuration settings are updated.
Fleet computes that run game server processes regularly check for and
receive updated runtime configurations. The computes immediately take
action to comply with the new configuration by launching new server
processes or by not replacing existing processes when they shut down.
Updating a fleet's runtime configuration never affects existing server
processes.

B<Learn more>

Setting up Amazon GameLift fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)


=head2 UpdateScript

=over

=item ScriptId => Str

=item [Name => Str]

=item [StorageLocation => L<Paws::GameLift::S3Location>]

=item [Version => Str]

=item [ZipFile => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateScript>

Returns: a L<Paws::GameLift::UpdateScriptOutput> instance

Updates Realtime script metadata and content.

To update script metadata, specify the script ID and provide updated
name and/or version values.

To update script content, provide an updated zip file by pointing to
either a local file or an Amazon S3 bucket location. You can use either
method regardless of how the original script was uploaded. Use the
I<Version> parameter to track updates to the script.

If the call is successful, the updated metadata is stored in the script
record and a revised script is uploaded to the Amazon GameLift service.
Once the script is updated and acquired by a fleet instance, the new
version is used for all new game sessions.

B<Learn more>

Amazon GameLift Amazon GameLift Realtime
(https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

B<Related actions>

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)


=head2 ValidateMatchmakingRuleSet

=over

=item RuleSetBody => Str


=back

Each argument is described in detail in: L<Paws::GameLift::ValidateMatchmakingRuleSet>

Returns: a L<Paws::GameLift::ValidateMatchmakingRuleSetOutput> instance

Validates the syntax of a matchmaking rule or rule set. This operation
checks that the rule set is using syntactically correct JSON and that
it conforms to allowed property expressions. To validate syntax,
provide a rule set JSON string.

B<Learn more>

=over

=item *

Build a rule set
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllFleetAttributes(sub { },[FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllFleetAttributes([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetAttributes, passing the object as the first parameter, and the string 'FleetAttributes' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetAttributesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleetCapacity(sub { },[FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllFleetCapacity([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetCapacity, passing the object as the first parameter, and the string 'FleetCapacity' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetCapacityOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleetEvents(sub { },FleetId => Str, [EndTime => Str, Limit => Int, NextToken => Str, StartTime => Str])

=head2 DescribeAllFleetEvents(FleetId => Str, [EndTime => Str, Limit => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleetUtilization(sub { },[FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllFleetUtilization([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetUtilization, passing the object as the first parameter, and the string 'FleetUtilization' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetUtilizationOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameServerInstances(sub { },GameServerGroupName => Str, [InstanceIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllGameServerInstances(GameServerGroupName => Str, [InstanceIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameServerInstances, passing the object as the first parameter, and the string 'GameServerInstances' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameServerInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameSessionDetails(sub { },[AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, Location => Str, NextToken => Str, StatusFilter => Str])

=head2 DescribeAllGameSessionDetails([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, Location => Str, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessionDetails, passing the object as the first parameter, and the string 'GameSessionDetails' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameSessionDetailsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameSessionQueues(sub { },[Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllGameSessionQueues([Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessionQueues, passing the object as the first parameter, and the string 'GameSessionQueues' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameSessionQueuesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameSessions(sub { },[AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, Location => Str, NextToken => Str, StatusFilter => Str])

=head2 DescribeAllGameSessions([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, Location => Str, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessions, passing the object as the first parameter, and the string 'GameSessions' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstances(sub { },FleetId => Str, [InstanceId => Str, Limit => Int, Location => Str, NextToken => Str])

=head2 DescribeAllInstances(FleetId => Str, [InstanceId => Str, Limit => Int, Location => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMatchmakingConfigurations(sub { },[Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str, RuleSetName => Str])

=head2 DescribeAllMatchmakingConfigurations([Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str, RuleSetName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Configurations, passing the object as the first parameter, and the string 'Configurations' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeMatchmakingConfigurationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMatchmakingRuleSets(sub { },[Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllMatchmakingRuleSets([Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleSets, passing the object as the first parameter, and the string 'RuleSets' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeMatchmakingRuleSetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPlayerSessions(sub { },[GameSessionId => Str, Limit => Int, NextToken => Str, PlayerId => Str, PlayerSessionId => Str, PlayerSessionStatusFilter => Str])

=head2 DescribeAllPlayerSessions([GameSessionId => Str, Limit => Int, NextToken => Str, PlayerId => Str, PlayerSessionId => Str, PlayerSessionStatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PlayerSessions, passing the object as the first parameter, and the string 'PlayerSessions' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribePlayerSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScalingPolicies(sub { },FleetId => Str, [Limit => Int, Location => Str, NextToken => Str, StatusFilter => Str])

=head2 DescribeAllScalingPolicies(FleetId => Str, [Limit => Int, Location => Str, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScalingPolicies, passing the object as the first parameter, and the string 'ScalingPolicies' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeScalingPoliciesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAliases(sub { },[Limit => Int, Name => Str, NextToken => Str, RoutingStrategyType => Str])

=head2 ListAllAliases([Limit => Int, Name => Str, NextToken => Str, RoutingStrategyType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListAliasesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuilds(sub { },[Limit => Int, NextToken => Str, Status => Str])

=head2 ListAllBuilds([Limit => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Builds, passing the object as the first parameter, and the string 'Builds' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListBuildsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCompute(sub { },FleetId => Str, [ComputeStatus => Str, ContainerGroupDefinitionName => Str, Limit => Int, Location => Str, NextToken => Str])

=head2 ListAllCompute(FleetId => Str, [ComputeStatus => Str, ContainerGroupDefinitionName => Str, Limit => Int, Location => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ComputeList, passing the object as the first parameter, and the string 'ComputeList' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListComputeOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContainerFleets(sub { },[ContainerGroupDefinitionName => Str, Limit => Int, NextToken => Str])

=head2 ListAllContainerFleets([ContainerGroupDefinitionName => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContainerFleets, passing the object as the first parameter, and the string 'ContainerFleets' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListContainerFleetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContainerGroupDefinitions(sub { },[ContainerGroupType => Str, Limit => Int, NextToken => Str])

=head2 ListAllContainerGroupDefinitions([ContainerGroupType => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContainerGroupDefinitions, passing the object as the first parameter, and the string 'ContainerGroupDefinitions' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListContainerGroupDefinitionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContainerGroupDefinitionVersions(sub { },Name => Str, [Limit => Int, NextToken => Str])

=head2 ListAllContainerGroupDefinitionVersions(Name => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContainerGroupDefinitions, passing the object as the first parameter, and the string 'ContainerGroupDefinitions' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListContainerGroupDefinitionVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleetDeployments(sub { },[FleetId => Str, Limit => Int, NextToken => Str])

=head2 ListAllFleetDeployments([FleetId => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetDeployments, passing the object as the first parameter, and the string 'FleetDeployments' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListFleetDeploymentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleets(sub { },[BuildId => Str, Limit => Int, NextToken => Str, ScriptId => Str])

=head2 ListAllFleets([BuildId => Str, Limit => Int, NextToken => Str, ScriptId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetIds, passing the object as the first parameter, and the string 'FleetIds' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListFleetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGameServerGroups(sub { },[Limit => Int, NextToken => Str])

=head2 ListAllGameServerGroups([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameServerGroups, passing the object as the first parameter, and the string 'GameServerGroups' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListGameServerGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGameServers(sub { },GameServerGroupName => Str, [Limit => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllGameServers(GameServerGroupName => Str, [Limit => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameServers, passing the object as the first parameter, and the string 'GameServers' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListGameServersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLocations(sub { },[Filters => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 ListAllLocations([Filters => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Locations, passing the object as the first parameter, and the string 'Locations' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListLocationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScripts(sub { },[Limit => Int, NextToken => Str])

=head2 ListAllScripts([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Scripts, passing the object as the first parameter, and the string 'Scripts' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListScriptsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllGameSessions(sub { },[AliasId => Str, FilterExpression => Str, FleetId => Str, Limit => Int, Location => Str, NextToken => Str, SortExpression => Str])

=head2 SearchAllGameSessions([AliasId => Str, FilterExpression => Str, FleetId => Str, Limit => Int, Location => Str, NextToken => Str, SortExpression => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessions, passing the object as the first parameter, and the string 'GameSessions' as the second parameter 

If not, it will return a a L<Paws::GameLift::SearchGameSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

