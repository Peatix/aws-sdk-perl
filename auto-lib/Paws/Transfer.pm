package Paws::Transfer;
  use Moose;
  sub service { 'transfer' }
  sub signing_name { 'transfer' }
  sub version { '2018-11-05' }
  sub target_prefix { 'TransferService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgreement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateAgreement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateWebApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgreement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteAgreement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHostKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteHostKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSshPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteSshPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteWebApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebAppCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteWebAppCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAgreement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeAgreement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeHostKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeSecurityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWebApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeWebApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWebAppCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeWebAppCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ImportCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportHostKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ImportHostKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSshPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ImportSshPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccesses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListAccesses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgreements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListAgreements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFileTransferResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListFileTransferResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHostKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListHostKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListSecurityPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListWebApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendWorkflowStepState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::SendWorkflowStepState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDirectoryListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StartDirectoryListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFileTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StartFileTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRemoteDelete {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StartRemoteDelete', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRemoteMove {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StartRemoteMove', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StartServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StopServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::TestConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::TestIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgreement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateAgreement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHostKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateHostKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateWebApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebAppCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateWebAppCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccesses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccesses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccesses(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accesses }, @{ $next_result->Accesses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accesses') foreach (@{ $result->Accesses });
        $result = $self->ListAccesses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accesses') foreach (@{ $result->Accesses });
    }

    return undef
  }
  sub ListAllAgreements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgreements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAgreements(@_, NextToken => $next_result->NextToken);
        push @{ $result->Agreements }, @{ $next_result->Agreements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Agreements') foreach (@{ $result->Agreements });
        $result = $self->ListAgreements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Agreements') foreach (@{ $result->Agreements });
    }

    return undef
  }
  sub ListAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCertificates(@_, NextToken => $next_result->NextToken);
        push @{ $result->Certificates }, @{ $next_result->Certificates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
        $result = $self->ListCertificates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
    }

    return undef
  }
  sub ListAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConnectors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Connectors }, @{ $next_result->Connectors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connectors') foreach (@{ $result->Connectors });
        $result = $self->ListConnectors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connectors') foreach (@{ $result->Connectors });
    }

    return undef
  }
  sub ListAllExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Executions }, @{ $next_result->Executions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Executions') foreach (@{ $result->Executions });
        $result = $self->ListExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Executions') foreach (@{ $result->Executions });
    }

    return undef
  }
  sub ListAllFileTransferResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFileTransferResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFileTransferResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->FileTransferResults }, @{ $next_result->FileTransferResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FileTransferResults') foreach (@{ $result->FileTransferResults });
        $result = $self->ListFileTransferResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FileTransferResults') foreach (@{ $result->FileTransferResults });
    }

    return undef
  }
  sub ListAllProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Profiles }, @{ $next_result->Profiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Profiles') foreach (@{ $result->Profiles });
        $result = $self->ListProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Profiles') foreach (@{ $result->Profiles });
    }

    return undef
  }
  sub ListAllSecurityPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityPolicyNames }, @{ $next_result->SecurityPolicyNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityPolicyNames') foreach (@{ $result->SecurityPolicyNames });
        $result = $self->ListSecurityPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityPolicyNames') foreach (@{ $result->SecurityPolicyNames });
    }

    return undef
  }
  sub ListAllServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Servers }, @{ $next_result->Servers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Servers') foreach (@{ $result->Servers });
        $result = $self->ListServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Servers') foreach (@{ $result->Servers });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }
  sub ListAllWebApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWebApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWebApps(@_, NextToken => $next_result->NextToken);
        push @{ $result->WebApps }, @{ $next_result->WebApps };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WebApps') foreach (@{ $result->WebApps });
        $result = $self->ListWebApps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WebApps') foreach (@{ $result->WebApps });
    }

    return undef
  }
  sub ListAllWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWorkflows(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workflows }, @{ $next_result->Workflows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workflows') foreach (@{ $result->Workflows });
        $result = $self->ListWorkflows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workflows') foreach (@{ $result->Workflows });
    }

    return undef
  }


  sub operations { qw/CreateAccess CreateAgreement CreateConnector CreateProfile CreateServer CreateUser CreateWebApp CreateWorkflow DeleteAccess DeleteAgreement DeleteCertificate DeleteConnector DeleteHostKey DeleteProfile DeleteServer DeleteSshPublicKey DeleteUser DeleteWebApp DeleteWebAppCustomization DeleteWorkflow DescribeAccess DescribeAgreement DescribeCertificate DescribeConnector DescribeExecution DescribeHostKey DescribeProfile DescribeSecurityPolicy DescribeServer DescribeUser DescribeWebApp DescribeWebAppCustomization DescribeWorkflow ImportCertificate ImportHostKey ImportSshPublicKey ListAccesses ListAgreements ListCertificates ListConnectors ListExecutions ListFileTransferResults ListHostKeys ListProfiles ListSecurityPolicies ListServers ListTagsForResource ListUsers ListWebApps ListWorkflows SendWorkflowStepState StartDirectoryListing StartFileTransfer StartRemoteDelete StartRemoteMove StartServer StopServer TagResource TestConnection TestIdentityProvider UntagResource UpdateAccess UpdateAgreement UpdateCertificate UpdateConnector UpdateHostKey UpdateProfile UpdateServer UpdateUser UpdateWebApp UpdateWebAppCustomization / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer - Perl Interface to AWS AWS Transfer Family

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Transfer');
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

Transfer Family is a fully managed service that enables the transfer of
files over the File Transfer Protocol (FTP), File Transfer Protocol
over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP)
directly into and out of Amazon Simple Storage Service (Amazon S3) or
Amazon EFS. Additionally, you can use Applicability Statement 2 (AS2)
to transfer files into and out of Amazon S3. Amazon Web Services helps
you seamlessly migrate your file transfer workflows to Transfer Family
by integrating with existing authentication systems, and providing DNS
routing with Amazon Route 53 so nothing changes for your customers and
partners, or their applications. With your data in Amazon S3, you can
use it with Amazon Web Services services for processing, analytics,
machine learning, and archiving. Getting started with Transfer Family
is easy since there is no infrastructure to buy and set up.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateAccess

=over

=item ExternalId => Str

=item Role => Str

=item ServerId => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateAccess>

Returns: a L<Paws::Transfer::CreateAccessResponse> instance

Used by administrators to choose which groups in the directory should
have access to upload and download files over the enabled protocols
using Transfer Family. For example, a Microsoft Active Directory might
contain 50,000 users, but only a small fraction might need the ability
to transfer files to the server. An administrator can use
C<CreateAccess> to limit the access to the correct set of users who
need this ability.


=head2 CreateAgreement

=over

=item AccessRole => Str

=item LocalProfileId => Str

=item PartnerProfileId => Str

=item ServerId => Str

=item [BaseDirectory => Str]

=item [CustomDirectories => L<Paws::Transfer::CustomDirectoriesType>]

=item [Description => Str]

=item [EnforceMessageSigning => Str]

=item [PreserveFilename => Str]

=item [Status => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateAgreement>

Returns: a L<Paws::Transfer::CreateAgreementResponse> instance

Creates an agreement. An agreement is a bilateral trading partner
agreement, or partnership, between an Transfer Family server and an AS2
process. The agreement defines the file and message transfer
relationship between the server and the AS2 process. To define an
agreement, Transfer Family combines a server, local profile, partner
profile, certificate, and other attributes.

The partner is identified with the C<PartnerProfileId>, and the AS2
process is identified with the C<LocalProfileId>.

Specify I<either> C<BaseDirectory> or C<CustomDirectories>, but not
both. Specifying both causes the command to fail.


=head2 CreateConnector

=over

=item AccessRole => Str

=item Url => Str

=item [As2Config => L<Paws::Transfer::As2ConnectorConfig>]

=item [LoggingRole => Str]

=item [SecurityPolicyName => Str]

=item [SftpConfig => L<Paws::Transfer::SftpConnectorConfig>]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateConnector>

Returns: a L<Paws::Transfer::CreateConnectorResponse> instance

Creates the connector, which captures the parameters for a connection
for the AS2 or SFTP protocol. For AS2, the connector is required for
sending files to an externally hosted AS2 server. For SFTP, the
connector is required when sending files to an SFTP server or receiving
files from an SFTP server. For more details about connectors, see
Configure AS2 connectors
(https://docs.aws.amazon.com/transfer/latest/userguide/configure-as2-connector.html)
and Create SFTP connectors
(https://docs.aws.amazon.com/transfer/latest/userguide/configure-sftp-connector.html).

You must specify exactly one configuration object: either for AS2
(C<As2Config>) or SFTP (C<SftpConfig>).


=head2 CreateProfile

=over

=item As2Id => Str

=item ProfileType => Str

=item [CertificateIds => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateProfile>

Returns: a L<Paws::Transfer::CreateProfileResponse> instance

Creates the local or partner profile to use for AS2 transfers.


=head2 CreateServer

=over

=item [Certificate => Str]

=item [Domain => Str]

=item [EndpointDetails => L<Paws::Transfer::EndpointDetails>]

=item [EndpointType => Str]

=item [HostKey => Str]

=item [IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>]

=item [IdentityProviderType => Str]

=item [LoggingRole => Str]

=item [PostAuthenticationLoginBanner => Str]

=item [PreAuthenticationLoginBanner => Str]

=item [ProtocolDetails => L<Paws::Transfer::ProtocolDetails>]

=item [Protocols => ArrayRef[Str|Undef]]

=item [S3StorageOptions => L<Paws::Transfer::S3StorageOptions>]

=item [SecurityPolicyName => Str]

=item [StructuredLogDestinations => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]

=item [WorkflowDetails => L<Paws::Transfer::WorkflowDetails>]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateServer>

Returns: a L<Paws::Transfer::CreateServerResponse> instance

Instantiates an auto-scaling virtual server based on the selected file
transfer protocol in Amazon Web Services. When you make updates to your
file transfer protocol-enabled server or when you work with users, use
the service-generated C<ServerId> property that is assigned to the
newly created server.


=head2 CreateUser

=over

=item Role => Str

=item ServerId => Str

=item UserName => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]

=item [SshPublicKeyBody => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateUser>

Returns: a L<Paws::Transfer::CreateUserResponse> instance

Creates a user and associates them with an existing file transfer
protocol-enabled server. You can only create and associate users with
servers that have the C<IdentityProviderType> set to
C<SERVICE_MANAGED>. Using parameters for C<CreateUser>, you can specify
the user name, set the home directory, store the user's public key, and
assign the user's Identity and Access Management (IAM) role. You can
also optionally add a session policy, and assign metadata with tags
that can be used to group and search for users.


=head2 CreateWebApp

=over

=item IdentityProviderDetails => L<Paws::Transfer::WebAppIdentityProviderDetails>

=item [AccessEndpoint => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]

=item [WebAppEndpointPolicy => Str]

=item [WebAppUnits => L<Paws::Transfer::WebAppUnits>]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateWebApp>

Returns: a L<Paws::Transfer::CreateWebAppResponse> instance

Creates a web app based on specified parameters, and returns the ID for
the new web app.


=head2 CreateWorkflow

=over

=item Steps => ArrayRef[L<Paws::Transfer::WorkflowStep>]

=item [Description => Str]

=item [OnExceptionSteps => ArrayRef[L<Paws::Transfer::WorkflowStep>]]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateWorkflow>

Returns: a L<Paws::Transfer::CreateWorkflowResponse> instance

Allows you to create a workflow with specified steps and step details
the workflow invokes after file transfer completes. After creating a
workflow, you can associate the workflow created with any transfer
servers by specifying the C<workflow-details> field in C<CreateServer>
and C<UpdateServer> operations.


=head2 DeleteAccess

=over

=item ExternalId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteAccess>

Returns: nothing

Allows you to delete the access specified in the C<ServerID> and
C<ExternalID> parameters.


=head2 DeleteAgreement

=over

=item AgreementId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteAgreement>

Returns: nothing

Delete the agreement that's specified in the provided C<AgreementId>.


=head2 DeleteCertificate

=over

=item CertificateId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteCertificate>

Returns: nothing

Deletes the certificate that's specified in the C<CertificateId>
parameter.


=head2 DeleteConnector

=over

=item ConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteConnector>

Returns: nothing

Deletes the connector that's specified in the provided C<ConnectorId>.


=head2 DeleteHostKey

=over

=item HostKeyId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteHostKey>

Returns: nothing

Deletes the host key that's specified in the C<HostKeyId> parameter.


=head2 DeleteProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteProfile>

Returns: nothing

Deletes the profile that's specified in the C<ProfileId> parameter.


=head2 DeleteServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteServer>

Returns: nothing

Deletes the file transfer protocol-enabled server that you specify.

No response returns from this operation.


=head2 DeleteSshPublicKey

=over

=item ServerId => Str

=item SshPublicKeyId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteSshPublicKey>

Returns: nothing

Deletes a user's Secure Shell (SSH) public key.


=head2 DeleteUser

=over

=item ServerId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteUser>

Returns: nothing

Deletes the user belonging to a file transfer protocol-enabled server
you specify.

No response returns from this operation.

When you delete a user from a server, the user's information is lost.


=head2 DeleteWebApp

=over

=item WebAppId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteWebApp>

Returns: nothing

Deletes the specified web app.


=head2 DeleteWebAppCustomization

=over

=item WebAppId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteWebAppCustomization>

Returns: nothing

Deletes the C<WebAppCustomization> object that corresponds to the web
app ID specified.


=head2 DeleteWorkflow

=over

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteWorkflow>

Returns: nothing

Deletes the specified workflow.


=head2 DescribeAccess

=over

=item ExternalId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeAccess>

Returns: a L<Paws::Transfer::DescribeAccessResponse> instance

Describes the access that is assigned to the specific file transfer
protocol-enabled server, as identified by its C<ServerId> property and
its C<ExternalId>.

The response from this call returns the properties of the access that
is associated with the C<ServerId> value that was specified.


=head2 DescribeAgreement

=over

=item AgreementId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeAgreement>

Returns: a L<Paws::Transfer::DescribeAgreementResponse> instance

Describes the agreement that's identified by the C<AgreementId>.


=head2 DescribeCertificate

=over

=item CertificateId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeCertificate>

Returns: a L<Paws::Transfer::DescribeCertificateResponse> instance

Describes the certificate that's identified by the C<CertificateId>.


=head2 DescribeConnector

=over

=item ConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeConnector>

Returns: a L<Paws::Transfer::DescribeConnectorResponse> instance

Describes the connector that's identified by the C<ConnectorId.>


=head2 DescribeExecution

=over

=item ExecutionId => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeExecution>

Returns: a L<Paws::Transfer::DescribeExecutionResponse> instance

You can use C<DescribeExecution> to check the details of the execution
of the specified workflow.

This API call only returns details for in-progress workflows.

If you provide an ID for an execution that is not in progress, or if
the execution doesn't match the specified workflow ID, you receive a
C<ResourceNotFound> exception.


=head2 DescribeHostKey

=over

=item HostKeyId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeHostKey>

Returns: a L<Paws::Transfer::DescribeHostKeyResponse> instance

Returns the details of the host key that's specified by the
C<HostKeyId> and C<ServerId>.


=head2 DescribeProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeProfile>

Returns: a L<Paws::Transfer::DescribeProfileResponse> instance

Returns the details of the profile that's specified by the
C<ProfileId>.


=head2 DescribeSecurityPolicy

=over

=item SecurityPolicyName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeSecurityPolicy>

Returns: a L<Paws::Transfer::DescribeSecurityPolicyResponse> instance

Describes the security policy that is attached to your server or SFTP
connector. The response contains a description of the security policy's
properties. For more information about security policies, see Working
with security policies for servers
(https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html)
or Working with security policies for SFTP connectors
(https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html).


=head2 DescribeServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeServer>

Returns: a L<Paws::Transfer::DescribeServerResponse> instance

Describes a file transfer protocol-enabled server that you specify by
passing the C<ServerId> parameter.

The response contains a description of a server's properties. When you
set C<EndpointType> to VPC, the response will contain the
C<EndpointDetails>.


=head2 DescribeUser

=over

=item ServerId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeUser>

Returns: a L<Paws::Transfer::DescribeUserResponse> instance

Describes the user assigned to the specific file transfer
protocol-enabled server, as identified by its C<ServerId> property.

The response from this call returns the properties of the user
associated with the C<ServerId> value that was specified.


=head2 DescribeWebApp

=over

=item WebAppId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeWebApp>

Returns: a L<Paws::Transfer::DescribeWebAppResponse> instance

Describes the web app that's identified by C<WebAppId>.


=head2 DescribeWebAppCustomization

=over

=item WebAppId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeWebAppCustomization>

Returns: a L<Paws::Transfer::DescribeWebAppCustomizationResponse> instance

Describes the web app customization object that's identified by
C<WebAppId>.


=head2 DescribeWorkflow

=over

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeWorkflow>

Returns: a L<Paws::Transfer::DescribeWorkflowResponse> instance

Describes the specified workflow.


=head2 ImportCertificate

=over

=item Certificate => Str

=item Usage => Str

=item [ActiveDate => Str]

=item [CertificateChain => Str]

=item [Description => Str]

=item [InactiveDate => Str]

=item [PrivateKey => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::ImportCertificate>

Returns: a L<Paws::Transfer::ImportCertificateResponse> instance

Imports the signing and encryption certificates that you need to create
local (AS2) profiles and partner profiles.

You can import both the certificate and its chain in the C<Certificate>
parameter.

If you use the C<Certificate> parameter to upload both the certificate
and its chain, don't use the C<CertificateChain> parameter.


=head2 ImportHostKey

=over

=item HostKeyBody => Str

=item ServerId => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::ImportHostKey>

Returns: a L<Paws::Transfer::ImportHostKeyResponse> instance

Adds a host key to the server that's specified by the C<ServerId>
parameter.


=head2 ImportSshPublicKey

=over

=item ServerId => Str

=item SshPublicKeyBody => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::ImportSshPublicKey>

Returns: a L<Paws::Transfer::ImportSshPublicKeyResponse> instance

Adds a Secure Shell (SSH) public key to a Transfer Family user
identified by a C<UserName> value assigned to the specific file
transfer protocol-enabled server, identified by C<ServerId>.

The response returns the C<UserName> value, the C<ServerId> value, and
the name of the C<SshPublicKeyId>.


=head2 ListAccesses

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListAccesses>

Returns: a L<Paws::Transfer::ListAccessesResponse> instance

Lists the details for all the accesses you have on your server.


=head2 ListAgreements

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListAgreements>

Returns: a L<Paws::Transfer::ListAgreementsResponse> instance

Returns a list of the agreements for the server that's identified by
the C<ServerId> that you supply. If you want to limit the results to a
certain number, supply a value for the C<MaxResults> parameter. If you
ran the command previously and received a value for C<NextToken>, you
can supply that value to continue listing agreements from where you
left off.


=head2 ListCertificates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListCertificates>

Returns: a L<Paws::Transfer::ListCertificatesResponse> instance

Returns a list of the current certificates that have been imported into
Transfer Family. If you want to limit the results to a certain number,
supply a value for the C<MaxResults> parameter. If you ran the command
previously and received a value for the C<NextToken> parameter, you can
supply that value to continue listing certificates from where you left
off.


=head2 ListConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListConnectors>

Returns: a L<Paws::Transfer::ListConnectorsResponse> instance

Lists the connectors for the specified Region.


=head2 ListExecutions

=over

=item WorkflowId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListExecutions>

Returns: a L<Paws::Transfer::ListExecutionsResponse> instance

Lists all in-progress executions for the specified workflow.

If the specified workflow ID cannot be found, C<ListExecutions> returns
a C<ResourceNotFound> exception.


=head2 ListFileTransferResults

=over

=item ConnectorId => Str

=item TransferId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListFileTransferResults>

Returns: a L<Paws::Transfer::ListFileTransferResultsResponse> instance

Returns real-time updates and detailed information on the status of
each individual file being transferred in a specific file transfer
operation. You specify the file transfer by providing its
C<ConnectorId> and its C<TransferId>.

File transfer results are available up to 7 days after an operation has
been requested.


=head2 ListHostKeys

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListHostKeys>

Returns: a L<Paws::Transfer::ListHostKeysResponse> instance

Returns a list of host keys for the server that's specified by the
C<ServerId> parameter.


=head2 ListProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileType => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListProfiles>

Returns: a L<Paws::Transfer::ListProfilesResponse> instance

Returns a list of the profiles for your system. If you want to limit
the results to a certain number, supply a value for the C<MaxResults>
parameter. If you ran the command previously and received a value for
C<NextToken>, you can supply that value to continue listing profiles
from where you left off.


=head2 ListSecurityPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListSecurityPolicies>

Returns: a L<Paws::Transfer::ListSecurityPoliciesResponse> instance

Lists the security policies that are attached to your servers and SFTP
connectors. For more information about security policies, see Working
with security policies for servers
(https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html)
or Working with security policies for SFTP connectors
(https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html).


=head2 ListServers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListServers>

Returns: a L<Paws::Transfer::ListServersResponse> instance

Lists the file transfer protocol-enabled servers that are associated
with your Amazon Web Services account.


=head2 ListTagsForResource

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListTagsForResource>

Returns: a L<Paws::Transfer::ListTagsForResourceResponse> instance

Lists all of the tags associated with the Amazon Resource Name (ARN)
that you specify. The resource can be a user, server, or role.


=head2 ListUsers

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListUsers>

Returns: a L<Paws::Transfer::ListUsersResponse> instance

Lists the users for a file transfer protocol-enabled server that you
specify by passing the C<ServerId> parameter.


=head2 ListWebApps

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListWebApps>

Returns: a L<Paws::Transfer::ListWebAppsResponse> instance

Lists all web apps associated with your Amazon Web Services account for
your current region.


=head2 ListWorkflows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListWorkflows>

Returns: a L<Paws::Transfer::ListWorkflowsResponse> instance

Lists all workflows associated with your Amazon Web Services account
for your current region.


=head2 SendWorkflowStepState

=over

=item ExecutionId => Str

=item Status => Str

=item Token => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::SendWorkflowStepState>

Returns: a L<Paws::Transfer::SendWorkflowStepStateResponse> instance

Sends a callback for asynchronous custom steps.

The C<ExecutionId>, C<WorkflowId>, and C<Token> are passed to the
target resource during execution of a custom step of a workflow. You
must include those with their callback as well as providing a status.


=head2 StartDirectoryListing

=over

=item ConnectorId => Str

=item OutputDirectoryPath => Str

=item RemoteDirectoryPath => Str

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Transfer::StartDirectoryListing>

Returns: a L<Paws::Transfer::StartDirectoryListingResponse> instance

Retrieves a list of the contents of a directory from a remote SFTP
server. You specify the connector ID, the output path, and the remote
directory path. You can also specify the optional C<MaxItems> value to
control the maximum number of items that are listed from the remote
directory. This API returns a list of all files and directories in the
remote directory (up to the maximum value), but does not return files
or folders in sub-directories. That is, it only returns a list of files
and directories one-level deep.

After you receive the listing file, you can provide the files that you
want to transfer to the C<RetrieveFilePaths> parameter of the
C<StartFileTransfer> API call.

The naming convention for the output file is C<
I<connector-ID>-I<listing-ID>.json>. The output file contains the
following information:

=over

=item *

C<filePath>: the complete path of a remote file, relative to the
directory of the listing request for your SFTP connector on the remote
server.

=item *

C<modifiedTimestamp>: the last time the file was modified, in UTC time
format. This field is optional. If the remote file attributes don't
contain a timestamp, it is omitted from the file listing.

=item *

C<size>: the size of the file, in bytes. This field is optional. If the
remote file attributes don't contain a file size, it is omitted from
the file listing.

=item *

C<path>: the complete path of a remote directory, relative to the
directory of the listing request for your SFTP connector on the remote
server.

=item *

C<truncated>: a flag indicating whether the list output contains all of
the items contained in the remote directory or not. If your
C<Truncated> output value is true, you can increase the value provided
in the optional C<max-items> input attribute to be able to list more
items (up to the maximum allowed list size of 10,000 items).

=back



=head2 StartFileTransfer

=over

=item ConnectorId => Str

=item [LocalDirectoryPath => Str]

=item [RemoteDirectoryPath => Str]

=item [RetrieveFilePaths => ArrayRef[Str|Undef]]

=item [SendFilePaths => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Transfer::StartFileTransfer>

Returns: a L<Paws::Transfer::StartFileTransferResponse> instance

Begins a file transfer between local Amazon Web Services storage and a
remote AS2 or SFTP server.

=over

=item *

For an AS2 connector, you specify the C<ConnectorId> and one or more
C<SendFilePaths> to identify the files you want to transfer.

=item *

For an SFTP connector, the file transfer can be either outbound or
inbound. In both cases, you specify the C<ConnectorId>. Depending on
the direction of the transfer, you also specify the following items:

=over

=item *

If you are transferring file from a partner's SFTP server to Amazon Web
Services storage, you specify one or more C<RetrieveFilePaths> to
identify the files you want to transfer, and a C<LocalDirectoryPath> to
specify the destination folder.

=item *

If you are transferring file to a partner's SFTP server from Amazon Web
Services storage, you specify one or more C<SendFilePaths> to identify
the files you want to transfer, and a C<RemoteDirectoryPath> to specify
the destination folder.

=back

=back



=head2 StartRemoteDelete

=over

=item ConnectorId => Str

=item DeletePath => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StartRemoteDelete>

Returns: a L<Paws::Transfer::StartRemoteDeleteResponse> instance

Deletes a file or directory on the remote SFTP server.


=head2 StartRemoteMove

=over

=item ConnectorId => Str

=item SourcePath => Str

=item TargetPath => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StartRemoteMove>

Returns: a L<Paws::Transfer::StartRemoteMoveResponse> instance

Moves or renames a file or directory on the remote SFTP server.


=head2 StartServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StartServer>

Returns: nothing

Changes the state of a file transfer protocol-enabled server from
C<OFFLINE> to C<ONLINE>. It has no impact on a server that is already
C<ONLINE>. An C<ONLINE> server can accept and process file transfer
jobs.

The state of C<STARTING> indicates that the server is in an
intermediate state, either not fully able to respond, or not fully
online. The values of C<START_FAILED> can indicate an error condition.

No response is returned from this call.


=head2 StopServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StopServer>

Returns: nothing

Changes the state of a file transfer protocol-enabled server from
C<ONLINE> to C<OFFLINE>. An C<OFFLINE> server cannot accept and process
file transfer jobs. Information tied to your server, such as server and
user properties, are not affected by stopping your server.

Stopping the server does not reduce or impact your file transfer
protocol endpoint billing; you must delete the server to stop being
billed.

The state of C<STOPPING> indicates that the server is in an
intermediate state, either not fully able to respond, or not fully
offline. The values of C<STOP_FAILED> can indicate an error condition.

No response is returned from this call.


=head2 TagResource

=over

=item Arn => Str

=item Tags => ArrayRef[L<Paws::Transfer::Tag>]


=back

Each argument is described in detail in: L<Paws::Transfer::TagResource>

Returns: nothing

Attaches a key-value pair to a resource, as identified by its Amazon
Resource Name (ARN). Resources are users, servers, roles, and other
entities.

There is no response returned from this call.


=head2 TestConnection

=over

=item ConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::TestConnection>

Returns: a L<Paws::Transfer::TestConnectionResponse> instance

Tests whether your SFTP connector is set up successfully. We highly
recommend that you call this operation to test your ability to transfer
files between local Amazon Web Services storage and a trading partner's
SFTP server.


=head2 TestIdentityProvider

=over

=item ServerId => Str

=item UserName => Str

=item [ServerProtocol => Str]

=item [SourceIp => Str]

=item [UserPassword => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::TestIdentityProvider>

Returns: a L<Paws::Transfer::TestIdentityProviderResponse> instance

If the C<IdentityProviderType> of a file transfer protocol-enabled
server is C<AWS_DIRECTORY_SERVICE> or C<API_Gateway>, tests whether
your identity provider is set up successfully. We highly recommend that
you call this operation to test your authentication method as soon as
you create your server. By doing so, you can troubleshoot issues with
the identity provider integration to ensure that your users can
successfully use the service.

The C<ServerId> and C<UserName> parameters are required. The
C<ServerProtocol>, C<SourceIp>, and C<UserPassword> are all optional.

Note the following:

=over

=item *

You cannot use C<TestIdentityProvider> if the C<IdentityProviderType>
of your server is C<SERVICE_MANAGED>.

=item *

C<TestIdentityProvider> does not work with keys: it only accepts
passwords.

=item *

C<TestIdentityProvider> can test the password operation for a custom
Identity Provider that handles keys and passwords.

=item *

If you provide any incorrect values for any parameters, the C<Response>
field is empty.

=item *

If you provide a server ID for a server that uses service-managed
users, you get an error:

C<An error occurred (InvalidRequestException) when calling the
TestIdentityProvider operation: s-I<server-ID> not configured for
external auth>

=item *

If you enter a Server ID for the C<--server-id> parameter that does not
identify an actual Transfer server, you receive the following error:

C<An error occurred (ResourceNotFoundException) when calling the
TestIdentityProvider operation: Unknown server>.

It is possible your sever is in a different region. You can specify a
region by adding the following: C<--region region-code>, such as
C<--region us-east-2> to specify a server in B<US East (Ohio)>.

=back



=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Transfer::UntagResource>

Returns: nothing

Detaches a key-value pair from a resource, as identified by its Amazon
Resource Name (ARN). Resources are users, servers, roles, and other
entities.

No response is returned from this call.


=head2 UpdateAccess

=over

=item ExternalId => Str

=item ServerId => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateAccess>

Returns: a L<Paws::Transfer::UpdateAccessResponse> instance

Allows you to update parameters for the access specified in the
C<ServerID> and C<ExternalID> parameters.


=head2 UpdateAgreement

=over

=item AgreementId => Str

=item ServerId => Str

=item [AccessRole => Str]

=item [BaseDirectory => Str]

=item [CustomDirectories => L<Paws::Transfer::CustomDirectoriesType>]

=item [Description => Str]

=item [EnforceMessageSigning => Str]

=item [LocalProfileId => Str]

=item [PartnerProfileId => Str]

=item [PreserveFilename => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateAgreement>

Returns: a L<Paws::Transfer::UpdateAgreementResponse> instance

Updates some of the parameters for an existing agreement. Provide the
C<AgreementId> and the C<ServerId> for the agreement that you want to
update, along with the new values for the parameters to update.

Specify I<either> C<BaseDirectory> or C<CustomDirectories>, but not
both. Specifying both causes the command to fail.

If you update an agreement from using base directory to custom
directories, the base directory is no longer used. Similarly, if you
change from custom directories to a base directory, the custom
directories are no longer used.


=head2 UpdateCertificate

=over

=item CertificateId => Str

=item [ActiveDate => Str]

=item [Description => Str]

=item [InactiveDate => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateCertificate>

Returns: a L<Paws::Transfer::UpdateCertificateResponse> instance

Updates the active and inactive dates for a certificate.


=head2 UpdateConnector

=over

=item ConnectorId => Str

=item [AccessRole => Str]

=item [As2Config => L<Paws::Transfer::As2ConnectorConfig>]

=item [LoggingRole => Str]

=item [SecurityPolicyName => Str]

=item [SftpConfig => L<Paws::Transfer::SftpConnectorConfig>]

=item [Url => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateConnector>

Returns: a L<Paws::Transfer::UpdateConnectorResponse> instance

Updates some of the parameters for an existing connector. Provide the
C<ConnectorId> for the connector that you want to update, along with
the new values for the parameters to update.


=head2 UpdateHostKey

=over

=item Description => Str

=item HostKeyId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateHostKey>

Returns: a L<Paws::Transfer::UpdateHostKeyResponse> instance

Updates the description for the host key that's specified by the
C<ServerId> and C<HostKeyId> parameters.


=head2 UpdateProfile

=over

=item ProfileId => Str

=item [CertificateIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateProfile>

Returns: a L<Paws::Transfer::UpdateProfileResponse> instance

Updates some of the parameters for an existing profile. Provide the
C<ProfileId> for the profile that you want to update, along with the
new values for the parameters to update.


=head2 UpdateServer

=over

=item ServerId => Str

=item [Certificate => Str]

=item [EndpointDetails => L<Paws::Transfer::EndpointDetails>]

=item [EndpointType => Str]

=item [HostKey => Str]

=item [IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>]

=item [LoggingRole => Str]

=item [PostAuthenticationLoginBanner => Str]

=item [PreAuthenticationLoginBanner => Str]

=item [ProtocolDetails => L<Paws::Transfer::ProtocolDetails>]

=item [Protocols => ArrayRef[Str|Undef]]

=item [S3StorageOptions => L<Paws::Transfer::S3StorageOptions>]

=item [SecurityPolicyName => Str]

=item [StructuredLogDestinations => ArrayRef[Str|Undef]]

=item [WorkflowDetails => L<Paws::Transfer::WorkflowDetails>]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateServer>

Returns: a L<Paws::Transfer::UpdateServerResponse> instance

Updates the file transfer protocol-enabled server's properties after
that server has been created.

The C<UpdateServer> call returns the C<ServerId> of the server you
updated.


=head2 UpdateUser

=over

=item ServerId => Str

=item UserName => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateUser>

Returns: a L<Paws::Transfer::UpdateUserResponse> instance

Assigns new properties to a user. Parameters you pass modify any or all
of the following: the home directory, role, and policy for the
C<UserName> and C<ServerId> you specify.

The response returns the C<ServerId> and the C<UserName> for the
updated user.

In the console, you can select I<Restricted> when you create or update
a user. This ensures that the user can't access anything outside of
their home directory. The programmatic way to configure this behavior
is to update the user. Set their C<HomeDirectoryType> to C<LOGICAL>,
and specify C<HomeDirectoryMappings> with C<Entry> as root (C</>) and
C<Target> as their home directory.

For example, if the user's home directory is C</test/admin-user>, the
following command updates the user so that their configuration in the
console shows the I<Restricted> flag as selected.

C<aws transfer update-user --server-id E<lt>server-idE<gt> --user-name
admin-user --home-directory-type LOGICAL --home-directory-mappings
"[{\"Entry\":\"/\", \"Target\":\"/test/admin-user\"}]">


=head2 UpdateWebApp

=over

=item WebAppId => Str

=item [AccessEndpoint => Str]

=item [IdentityProviderDetails => L<Paws::Transfer::UpdateWebAppIdentityProviderDetails>]

=item [WebAppUnits => L<Paws::Transfer::WebAppUnits>]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateWebApp>

Returns: a L<Paws::Transfer::UpdateWebAppResponse> instance

Assigns new properties to a web app. You can modify the access point,
identity provider details, and the web app units.


=head2 UpdateWebAppCustomization

=over

=item WebAppId => Str

=item [FaviconFile => Str]

=item [LogoFile => Str]

=item [Title => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateWebAppCustomization>

Returns: a L<Paws::Transfer::UpdateWebAppCustomizationResponse> instance

Assigns new customization properties to a web app. You can modify the
icon file, logo file, and title.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccesses(sub { },ServerId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccesses(ServerId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accesses, passing the object as the first parameter, and the string 'Accesses' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListAccessesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAgreements(sub { },ServerId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAgreements(ServerId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Agreements, passing the object as the first parameter, and the string 'Agreements' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListAgreementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCertificates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCertificates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Certificates, passing the object as the first parameter, and the string 'Certificates' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConnectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connectors, passing the object as the first parameter, and the string 'Connectors' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExecutions(sub { },WorkflowId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllExecutions(WorkflowId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Executions, passing the object as the first parameter, and the string 'Executions' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFileTransferResults(sub { },ConnectorId => Str, TransferId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFileTransferResults(ConnectorId => Str, TransferId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FileTransferResults, passing the object as the first parameter, and the string 'FileTransferResults' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListFileTransferResultsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProfiles(sub { },[MaxResults => Int, NextToken => Str, ProfileType => Str])

=head2 ListAllProfiles([MaxResults => Int, NextToken => Str, ProfileType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Profiles, passing the object as the first parameter, and the string 'Profiles' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityPolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityPolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityPolicyNames, passing the object as the first parameter, and the string 'SecurityPolicyNames' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListSecurityPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Servers, passing the object as the first parameter, and the string 'Servers' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },Arn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(Arn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },ServerId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(ServerId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWebApps(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWebApps([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WebApps, passing the object as the first parameter, and the string 'WebApps' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListWebAppsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWorkflows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workflows, passing the object as the first parameter, and the string 'Workflows' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListWorkflowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

