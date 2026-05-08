package Paws::Route53RecoveryReadiness;
  use Moose;
  sub service { 'route53-recovery-readiness' }
  sub signing_name { 'route53-recovery-readiness' }
  sub version { '2019-12-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCell {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::CreateCell', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCrossAccountAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReadinessCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::CreateReadinessCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecoveryGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::CreateRecoveryGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::CreateResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCell {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::DeleteCell', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCrossAccountAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::DeleteCrossAccountAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReadinessCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::DeleteReadinessCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecoveryGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::DeleteRecoveryGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::DeleteResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetArchitectureRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetArchitectureRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCell {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetCell', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCellReadinessSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetCellReadinessSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadinessCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetReadinessCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadinessCheckResourceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetReadinessCheckResourceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReadinessCheckStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetReadinessCheckStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecoveryGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetRecoveryGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecoveryGroupReadinessSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetRecoveryGroupReadinessSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::GetResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCells {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListCells', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCrossAccountAuthorizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListCrossAccountAuthorizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReadinessChecks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListReadinessChecks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListRecoveryGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListResourceSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::ListTagsForResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCell {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::UpdateCell', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReadinessCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::UpdateReadinessCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecoveryGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::UpdateRecoveryGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResourceSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryReadiness::UpdateResourceSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllCellReadinessSummary {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCellReadinessSummary(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCellReadinessSummary(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReadinessChecks }, @{ $next_result->ReadinessChecks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReadinessChecks') foreach (@{ $result->ReadinessChecks });
        $result = $self->GetCellReadinessSummary(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReadinessChecks') foreach (@{ $result->ReadinessChecks });
    }

    return undef
  }
  sub GetAllReadinessCheckResourceStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReadinessCheckResourceStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetReadinessCheckResourceStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->GetReadinessCheckResourceStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }
  sub GetAllReadinessCheckStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReadinessCheckStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetReadinessCheckStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->GetReadinessCheckStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }
  sub GetAllRecoveryGroupReadinessSummary {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRecoveryGroupReadinessSummary(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetRecoveryGroupReadinessSummary(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReadinessChecks }, @{ $next_result->ReadinessChecks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReadinessChecks') foreach (@{ $result->ReadinessChecks });
        $result = $self->GetRecoveryGroupReadinessSummary(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReadinessChecks') foreach (@{ $result->ReadinessChecks });
    }

    return undef
  }
  sub ListAllCells {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCells(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCells(@_, NextToken => $next_result->NextToken);
        push @{ $result->Cells }, @{ $next_result->Cells };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Cells') foreach (@{ $result->Cells });
        $result = $self->ListCells(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Cells') foreach (@{ $result->Cells });
    }

    return undef
  }
  sub ListAllCrossAccountAuthorizations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCrossAccountAuthorizations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCrossAccountAuthorizations(@_, NextToken => $next_result->NextToken);
        push @{ $result->CrossAccountAuthorizations }, @{ $next_result->CrossAccountAuthorizations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CrossAccountAuthorizations') foreach (@{ $result->CrossAccountAuthorizations });
        $result = $self->ListCrossAccountAuthorizations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CrossAccountAuthorizations') foreach (@{ $result->CrossAccountAuthorizations });
    }

    return undef
  }
  sub ListAllReadinessChecks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReadinessChecks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListReadinessChecks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReadinessChecks }, @{ $next_result->ReadinessChecks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReadinessChecks') foreach (@{ $result->ReadinessChecks });
        $result = $self->ListReadinessChecks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReadinessChecks') foreach (@{ $result->ReadinessChecks });
    }

    return undef
  }
  sub ListAllRecoveryGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecoveryGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRecoveryGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->RecoveryGroups }, @{ $next_result->RecoveryGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RecoveryGroups') foreach (@{ $result->RecoveryGroups });
        $result = $self->ListRecoveryGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RecoveryGroups') foreach (@{ $result->RecoveryGroups });
    }

    return undef
  }
  sub ListAllResourceSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceSets }, @{ $next_result->ResourceSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceSets') foreach (@{ $result->ResourceSets });
        $result = $self->ListResourceSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceSets') foreach (@{ $result->ResourceSets });
    }

    return undef
  }
  sub ListAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->ListRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }


  sub operations { qw/CreateCell CreateCrossAccountAuthorization CreateReadinessCheck CreateRecoveryGroup CreateResourceSet DeleteCell DeleteCrossAccountAuthorization DeleteReadinessCheck DeleteRecoveryGroup DeleteResourceSet GetArchitectureRecommendations GetCell GetCellReadinessSummary GetReadinessCheck GetReadinessCheckResourceStatus GetReadinessCheckStatus GetRecoveryGroup GetRecoveryGroupReadinessSummary GetResourceSet ListCells ListCrossAccountAuthorizations ListReadinessChecks ListRecoveryGroups ListResourceSets ListRules ListTagsForResources TagResource UntagResource UpdateCell UpdateReadinessCheck UpdateRecoveryGroup UpdateResourceSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness - Perl Interface to AWS AWS Route53 Recovery Readiness

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53RecoveryReadiness');
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

Recovery readiness

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCell

=over

=item CellName => Str

=item [Cells => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Route53RecoveryReadiness::Tags>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::CreateCell>

Returns: a L<Paws::Route53RecoveryReadiness::CreateCellResponse> instance

Creates a cell in an account.


=head2 CreateCrossAccountAuthorization

=over

=item CrossAccountAuthorization => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorization>

Returns: a L<Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorizationResponse> instance

Creates a cross-account readiness authorization. This lets you
authorize another account to work with Route 53 Application Recovery
Controller, for example, to check the readiness status of resources in
a separate account.


=head2 CreateReadinessCheck

=over

=item ReadinessCheckName => Str

=item ResourceSetName => Str

=item [Tags => L<Paws::Route53RecoveryReadiness::Tags>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::CreateReadinessCheck>

Returns: a L<Paws::Route53RecoveryReadiness::CreateReadinessCheckResponse> instance

Creates a readiness check in an account. A readiness check monitors a
resource set in your application, such as a set of Amazon Aurora
instances, that Application Recovery Controller is auditing recovery
readiness for. The audits run once every minute on every resource
that's associated with a readiness check.


=head2 CreateRecoveryGroup

=over

=item RecoveryGroupName => Str

=item [Cells => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Route53RecoveryReadiness::Tags>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::CreateRecoveryGroup>

Returns: a L<Paws::Route53RecoveryReadiness::CreateRecoveryGroupResponse> instance

Creates a recovery group in an account. A recovery group corresponds to
an application and includes a list of the cells that make up the
application.


=head2 CreateResourceSet

=over

=item Resources => ArrayRef[L<Paws::Route53RecoveryReadiness::Resource>]

=item ResourceSetName => Str

=item ResourceSetType => Str

=item [Tags => L<Paws::Route53RecoveryReadiness::Tags>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::CreateResourceSet>

Returns: a L<Paws::Route53RecoveryReadiness::CreateResourceSetResponse> instance

Creates a resource set. A resource set is a set of resources of one
type that span multiple cells. You can associate a resource set with a
readiness check to monitor the resources for failover readiness.


=head2 DeleteCell

=over

=item CellName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::DeleteCell>

Returns: nothing

Delete a cell. When successful, the response code is 204, with no
response body.


=head2 DeleteCrossAccountAuthorization

=over

=item CrossAccountAuthorization => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::DeleteCrossAccountAuthorization>

Returns: a L<Paws::Route53RecoveryReadiness::DeleteCrossAccountAuthorizationResponse> instance

Deletes cross account readiness authorization.


=head2 DeleteReadinessCheck

=over

=item ReadinessCheckName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::DeleteReadinessCheck>

Returns: nothing

Deletes a readiness check.


=head2 DeleteRecoveryGroup

=over

=item RecoveryGroupName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::DeleteRecoveryGroup>

Returns: nothing

Deletes a recovery group.


=head2 DeleteResourceSet

=over

=item ResourceSetName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::DeleteResourceSet>

Returns: nothing

Deletes a resource set.


=head2 GetArchitectureRecommendations

=over

=item RecoveryGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetArchitectureRecommendations>

Returns: a L<Paws::Route53RecoveryReadiness::GetArchitectureRecommendationsResponse> instance

Gets recommendations about architecture designs for improving
resiliency for an application, based on a recovery group.


=head2 GetCell

=over

=item CellName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetCell>

Returns: a L<Paws::Route53RecoveryReadiness::GetCellResponse> instance

Gets information about a cell including cell name, cell Amazon Resource
Name (ARN), ARNs of nested cells for this cell, and a list of those
cell ARNs with their associated recovery group ARNs.


=head2 GetCellReadinessSummary

=over

=item CellName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetCellReadinessSummary>

Returns: a L<Paws::Route53RecoveryReadiness::GetCellReadinessSummaryResponse> instance

Gets readiness for a cell. Aggregates the readiness of all the
resources that are associated with the cell into a single value.


=head2 GetReadinessCheck

=over

=item ReadinessCheckName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetReadinessCheck>

Returns: a L<Paws::Route53RecoveryReadiness::GetReadinessCheckResponse> instance

Gets details about a readiness check.


=head2 GetReadinessCheckResourceStatus

=over

=item ReadinessCheckName => Str

=item ResourceIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetReadinessCheckResourceStatus>

Returns: a L<Paws::Route53RecoveryReadiness::GetReadinessCheckResourceStatusResponse> instance

Gets individual readiness status for a readiness check. To see the
overall readiness status for a recovery group, that considers the
readiness status for all the readiness checks in the recovery group,
use GetRecoveryGroupReadinessSummary.


=head2 GetReadinessCheckStatus

=over

=item ReadinessCheckName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetReadinessCheckStatus>

Returns: a L<Paws::Route53RecoveryReadiness::GetReadinessCheckStatusResponse> instance

Gets the readiness status for an individual readiness check. To see the
overall readiness status for a recovery group, that considers the
readiness status for all the readiness checks in a recovery group, use
GetRecoveryGroupReadinessSummary.


=head2 GetRecoveryGroup

=over

=item RecoveryGroupName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetRecoveryGroup>

Returns: a L<Paws::Route53RecoveryReadiness::GetRecoveryGroupResponse> instance

Gets details about a recovery group, including a list of the cells that
are included in it.


=head2 GetRecoveryGroupReadinessSummary

=over

=item RecoveryGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetRecoveryGroupReadinessSummary>

Returns: a L<Paws::Route53RecoveryReadiness::GetRecoveryGroupReadinessSummaryResponse> instance

Displays a summary of information about a recovery group's readiness
status. Includes the readiness checks for resources in the recovery
group and the readiness status of each one.


=head2 GetResourceSet

=over

=item ResourceSetName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::GetResourceSet>

Returns: a L<Paws::Route53RecoveryReadiness::GetResourceSetResponse> instance

Displays the details about a resource set, including a list of the
resources in the set.


=head2 ListCells

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListCells>

Returns: a L<Paws::Route53RecoveryReadiness::ListCellsResponse> instance

Lists the cells for an account.


=head2 ListCrossAccountAuthorizations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListCrossAccountAuthorizations>

Returns: a L<Paws::Route53RecoveryReadiness::ListCrossAccountAuthorizationsResponse> instance

Lists the cross-account readiness authorizations that are in place for
an account.


=head2 ListReadinessChecks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListReadinessChecks>

Returns: a L<Paws::Route53RecoveryReadiness::ListReadinessChecksResponse> instance

Lists the readiness checks for an account.


=head2 ListRecoveryGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListRecoveryGroups>

Returns: a L<Paws::Route53RecoveryReadiness::ListRecoveryGroupsResponse> instance

Lists the recovery groups in an account.


=head2 ListResourceSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListResourceSets>

Returns: a L<Paws::Route53RecoveryReadiness::ListResourceSetsResponse> instance

Lists the resource sets in an account.


=head2 ListRules

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListRules>

Returns: a L<Paws::Route53RecoveryReadiness::ListRulesResponse> instance

Lists all readiness rules, or lists the readiness rules for a specific
resource type.


=head2 ListTagsForResources

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::ListTagsForResources>

Returns: a L<Paws::Route53RecoveryReadiness::ListTagsForResourcesResponse> instance

Lists the tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Route53RecoveryReadiness::Tags>


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::TagResource>

Returns: a L<Paws::Route53RecoveryReadiness::TagResourceResponse> instance

Adds a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::UntagResource>

Returns: nothing

Removes a tag from a resource.


=head2 UpdateCell

=over

=item CellName => Str

=item Cells => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::UpdateCell>

Returns: a L<Paws::Route53RecoveryReadiness::UpdateCellResponse> instance

Updates a cell to replace the list of nested cells with a new list of
nested cells.


=head2 UpdateReadinessCheck

=over

=item ReadinessCheckName => Str

=item ResourceSetName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::UpdateReadinessCheck>

Returns: a L<Paws::Route53RecoveryReadiness::UpdateReadinessCheckResponse> instance

Updates a readiness check.


=head2 UpdateRecoveryGroup

=over

=item Cells => ArrayRef[Str|Undef]

=item RecoveryGroupName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::UpdateRecoveryGroup>

Returns: a L<Paws::Route53RecoveryReadiness::UpdateRecoveryGroupResponse> instance

Updates a recovery group.


=head2 UpdateResourceSet

=over

=item Resources => ArrayRef[L<Paws::Route53RecoveryReadiness::Resource>]

=item ResourceSetName => Str

=item ResourceSetType => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryReadiness::UpdateResourceSet>

Returns: a L<Paws::Route53RecoveryReadiness::UpdateResourceSetResponse> instance

Updates a resource set.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllCellReadinessSummary(sub { },CellName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllCellReadinessSummary(CellName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReadinessChecks, passing the object as the first parameter, and the string 'ReadinessChecks' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::GetCellReadinessSummaryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReadinessCheckResourceStatus(sub { },ReadinessCheckName => Str, ResourceIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllReadinessCheckResourceStatus(ReadinessCheckName => Str, ResourceIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::GetReadinessCheckResourceStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReadinessCheckStatus(sub { },ReadinessCheckName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllReadinessCheckStatus(ReadinessCheckName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::GetReadinessCheckStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRecoveryGroupReadinessSummary(sub { },RecoveryGroupName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllRecoveryGroupReadinessSummary(RecoveryGroupName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReadinessChecks, passing the object as the first parameter, and the string 'ReadinessChecks' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::GetRecoveryGroupReadinessSummaryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCells(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCells([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Cells, passing the object as the first parameter, and the string 'Cells' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::ListCellsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCrossAccountAuthorizations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCrossAccountAuthorizations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CrossAccountAuthorizations, passing the object as the first parameter, and the string 'CrossAccountAuthorizations' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::ListCrossAccountAuthorizationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReadinessChecks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReadinessChecks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReadinessChecks, passing the object as the first parameter, and the string 'ReadinessChecks' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::ListReadinessChecksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecoveryGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRecoveryGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RecoveryGroups, passing the object as the first parameter, and the string 'RecoveryGroups' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::ListRecoveryGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceSets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllResourceSets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceSets, passing the object as the first parameter, and the string 'ResourceSets' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::ListResourceSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRules(sub { },[MaxResults => Int, NextToken => Str, ResourceType => Str])

=head2 ListAllRules([MaxResults => Int, NextToken => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryReadiness::ListRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

