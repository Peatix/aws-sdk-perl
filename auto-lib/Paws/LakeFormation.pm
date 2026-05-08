package Paws::LakeFormation;
  use Moose;
  sub service { 'lakeformation' }
  sub signing_name { 'lakeformation' }
  sub version { '2017-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddLFTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::AddLFTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeDecoratedRoleWithSAML {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::AssumeDecoratedRoleWithSAML', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGrantPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::BatchGrantPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchRevokePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::BatchRevokePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CancelTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CommitTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CommitTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataCellsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CreateDataCellsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLakeFormationIdentityCenterConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CreateLakeFormationIdentityCenterConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLakeFormationOptIn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CreateLakeFormationOptIn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CreateLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLFTagExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CreateLFTagExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataCellsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteDataCellsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLakeFormationIdentityCenterConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteLakeFormationIdentityCenterConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLakeFormationOptIn {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteLakeFormationOptIn', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLFTagExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteLFTagExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjectsOnCancel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteObjectsOnCancel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeregisterResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLakeFormationIdentityCenterConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DescribeResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DescribeTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExtendTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ExtendTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataCellsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetDataCellsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakePrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetDataLakePrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetDataLakeSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEffectivePermissionsForPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetEffectivePermissionsForPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLFTagExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetLFTagExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetQueryState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetQueryStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetResourceLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetTableObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemporaryGluePartitionCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetTemporaryGluePartitionCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemporaryGlueTableCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetTemporaryGlueTableCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkUnitResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetWorkUnitResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkUnits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetWorkUnits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GrantPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GrantPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataCellsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListDataCellsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLakeFormationOptIns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListLakeFormationOptIns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLFTagExpressions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListLFTagExpressions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableStorageOptimizers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListTableStorageOptimizers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTransactions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListTransactions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDataLakeSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::PutDataLakeSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RegisterResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveLFTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RemoveLFTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RevokePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchDatabasesByLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::SearchDatabasesByLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTablesByLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::SearchTablesByLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQueryPlanning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::StartQueryPlanning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTransaction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::StartTransaction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataCellsFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateDataCellsFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLakeFormationIdentityCenterConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateLakeFormationIdentityCenterConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLFTagExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateLFTagExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTableObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateTableObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTableStorageOptimizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateTableStorageOptimizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllWorkUnits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetWorkUnits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetWorkUnits(@_, NextToken => $next_result->NextToken);
        push @{ $result->WorkUnitRanges }, @{ $next_result->WorkUnitRanges };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WorkUnitRanges') foreach (@{ $result->WorkUnitRanges });
        $result = $self->GetWorkUnits(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WorkUnitRanges') foreach (@{ $result->WorkUnitRanges });
    }

    return undef
  }
  sub ListAllDataCellsFilter {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataCellsFilter(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataCellsFilter(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataCellsFilters }, @{ $next_result->DataCellsFilters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataCellsFilters') foreach (@{ $result->DataCellsFilters });
        $result = $self->ListDataCellsFilter(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataCellsFilters') foreach (@{ $result->DataCellsFilters });
    }

    return undef
  }
  sub ListAllLFTagExpressions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLFTagExpressions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLFTagExpressions(@_, NextToken => $next_result->NextToken);
        push @{ $result->LFTagExpressions }, @{ $next_result->LFTagExpressions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LFTagExpressions') foreach (@{ $result->LFTagExpressions });
        $result = $self->ListLFTagExpressions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LFTagExpressions') foreach (@{ $result->LFTagExpressions });
    }

    return undef
  }
  sub ListAllLFTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLFTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLFTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->LFTags }, @{ $next_result->LFTags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LFTags') foreach (@{ $result->LFTags });
        $result = $self->ListLFTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LFTags') foreach (@{ $result->LFTags });
    }

    return undef
  }
  sub SearchAllDatabasesByLFTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchDatabasesByLFTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchDatabasesByLFTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatabaseList }, @{ $next_result->DatabaseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
        $result = $self->SearchDatabasesByLFTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
    }

    return undef
  }
  sub SearchAllTablesByLFTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchTablesByLFTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchTablesByLFTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableList }, @{ $next_result->TableList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableList') foreach (@{ $result->TableList });
        $result = $self->SearchTablesByLFTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableList') foreach (@{ $result->TableList });
    }

    return undef
  }


  sub operations { qw/AddLFTagsToResource AssumeDecoratedRoleWithSAML BatchGrantPermissions BatchRevokePermissions CancelTransaction CommitTransaction CreateDataCellsFilter CreateLakeFormationIdentityCenterConfiguration CreateLakeFormationOptIn CreateLFTag CreateLFTagExpression DeleteDataCellsFilter DeleteLakeFormationIdentityCenterConfiguration DeleteLakeFormationOptIn DeleteLFTag DeleteLFTagExpression DeleteObjectsOnCancel DeregisterResource DescribeLakeFormationIdentityCenterConfiguration DescribeResource DescribeTransaction ExtendTransaction GetDataCellsFilter GetDataLakePrincipal GetDataLakeSettings GetEffectivePermissionsForPath GetLFTag GetLFTagExpression GetQueryState GetQueryStatistics GetResourceLFTags GetTableObjects GetTemporaryGluePartitionCredentials GetTemporaryGlueTableCredentials GetWorkUnitResults GetWorkUnits GrantPermissions ListDataCellsFilter ListLakeFormationOptIns ListLFTagExpressions ListLFTags ListPermissions ListResources ListTableStorageOptimizers ListTransactions PutDataLakeSettings RegisterResource RemoveLFTagsFromResource RevokePermissions SearchDatabasesByLFTags SearchTablesByLFTags StartQueryPlanning StartTransaction UpdateDataCellsFilter UpdateLakeFormationIdentityCenterConfiguration UpdateLFTag UpdateLFTagExpression UpdateResource UpdateTableObjects UpdateTableStorageOptimizer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation - Perl Interface to AWS AWS Lake Formation

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LakeFormation');
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

Lake Formation

Defines the public endpoint for the Lake Formation service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31>


=head1 METHODS

=head2 AddLFTagsToResource

=over

=item LFTags => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::AddLFTagsToResource>

Returns: a L<Paws::LakeFormation::AddLFTagsToResourceResponse> instance

Attaches one or more LF-tags to an existing resource.


=head2 AssumeDecoratedRoleWithSAML

=over

=item PrincipalArn => Str

=item RoleArn => Str

=item SAMLAssertion => Str

=item [DurationSeconds => Int]


=back

Each argument is described in detail in: L<Paws::LakeFormation::AssumeDecoratedRoleWithSAML>

Returns: a L<Paws::LakeFormation::AssumeDecoratedRoleWithSAMLResponse> instance

Allows a caller to assume an IAM role decorated as the SAML user
specified in the SAML assertion included in the request. This
decoration allows Lake Formation to enforce access policies against the
SAML users and groups. This API operation requires SAML federation
setup in the callerE<rsquo>s account as it can only be called with
valid SAML assertions. Lake Formation does not scope down the
permission of the assumed role. All permissions attached to the role
via the SAML federation setup will be included in the role session.

This decorated role is expected to access data in Amazon S3 by getting
temporary access from Lake Formation which is authorized via the
virtual API C<GetDataAccess>. Therefore, all SAML roles that can be
assumed via C<AssumeDecoratedRoleWithSAML> must at a minimum include
C<lakeformation:GetDataAccess> in their role policies. A typical IAM
policy attached to such a role would look as follows:


=head2 BatchGrantPermissions

=over

=item Entries => ArrayRef[L<Paws::LakeFormation::BatchPermissionsRequestEntry>]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::BatchGrantPermissions>

Returns: a L<Paws::LakeFormation::BatchGrantPermissionsResponse> instance

Batch operation to grant permissions to the principal.


=head2 BatchRevokePermissions

=over

=item Entries => ArrayRef[L<Paws::LakeFormation::BatchPermissionsRequestEntry>]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::BatchRevokePermissions>

Returns: a L<Paws::LakeFormation::BatchRevokePermissionsResponse> instance

Batch operation to revoke permissions from the principal.


=head2 CancelTransaction

=over

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::CancelTransaction>

Returns: a L<Paws::LakeFormation::CancelTransactionResponse> instance

Attempts to cancel the specified transaction. Returns an exception if
the transaction was previously committed.


=head2 CommitTransaction

=over

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::CommitTransaction>

Returns: a L<Paws::LakeFormation::CommitTransactionResponse> instance

Attempts to commit the specified transaction. Returns an exception if
the transaction was previously aborted. This API action is idempotent
if called multiple times for the same transaction.


=head2 CreateDataCellsFilter

=over

=item TableData => L<Paws::LakeFormation::DataCellsFilter>


=back

Each argument is described in detail in: L<Paws::LakeFormation::CreateDataCellsFilter>

Returns: a L<Paws::LakeFormation::CreateDataCellsFilterResponse> instance

Creates a data cell filter to allow one to grant access to certain
columns on certain rows.


=head2 CreateLakeFormationIdentityCenterConfiguration

=over

=item [CatalogId => Str]

=item [ExternalFiltering => L<Paws::LakeFormation::ExternalFilteringConfiguration>]

=item [InstanceArn => Str]

=item [ShareRecipients => ArrayRef[L<Paws::LakeFormation::DataLakePrincipal>]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::CreateLakeFormationIdentityCenterConfiguration>

Returns: a L<Paws::LakeFormation::CreateLakeFormationIdentityCenterConfigurationResponse> instance

Creates an IAM Identity Center connection with Lake Formation to allow
IAM Identity Center users and groups to access Data Catalog resources.


=head2 CreateLakeFormationOptIn

=over

=item Principal => L<Paws::LakeFormation::DataLakePrincipal>

=item Resource => L<Paws::LakeFormation::Resource>

=item [Condition => L<Paws::LakeFormation::Condition>]


=back

Each argument is described in detail in: L<Paws::LakeFormation::CreateLakeFormationOptIn>

Returns: a L<Paws::LakeFormation::CreateLakeFormationOptInResponse> instance

Enforce Lake Formation permissions for the given databases, tables, and
principals.


=head2 CreateLFTag

=over

=item TagKey => Str

=item TagValues => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::CreateLFTag>

Returns: a L<Paws::LakeFormation::CreateLFTagResponse> instance

Creates an LF-tag with the specified name and values.


=head2 CreateLFTagExpression

=over

=item Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

=item Name => Str

=item [CatalogId => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::CreateLFTagExpression>

Returns: a L<Paws::LakeFormation::CreateLFTagExpressionResponse> instance

Creates a new LF-Tag expression with the provided name, description,
catalog ID, and expression body. This call fails if a LF-Tag expression
with the same name already exists in the callerE<rsquo>s account or if
the underlying LF-Tags don't exist. To call this API operation, caller
needs the following Lake Formation permissions:

C<CREATE_LF_TAG_EXPRESSION> on the root catalog resource.

C<GRANT_WITH_LF_TAG_EXPRESSION> on all underlying LF-Tag key:value
pairs included in the expression.


=head2 DeleteDataCellsFilter

=over

=item [DatabaseName => Str]

=item [Name => Str]

=item [TableCatalogId => Str]

=item [TableName => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteDataCellsFilter>

Returns: a L<Paws::LakeFormation::DeleteDataCellsFilterResponse> instance

Deletes a data cell filter.


=head2 DeleteLakeFormationIdentityCenterConfiguration

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteLakeFormationIdentityCenterConfiguration>

Returns: a L<Paws::LakeFormation::DeleteLakeFormationIdentityCenterConfigurationResponse> instance

Deletes an IAM Identity Center connection with Lake Formation.


=head2 DeleteLakeFormationOptIn

=over

=item Principal => L<Paws::LakeFormation::DataLakePrincipal>

=item Resource => L<Paws::LakeFormation::Resource>

=item [Condition => L<Paws::LakeFormation::Condition>]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteLakeFormationOptIn>

Returns: a L<Paws::LakeFormation::DeleteLakeFormationOptInResponse> instance

Remove the Lake Formation permissions enforcement of the given
databases, tables, and principals.


=head2 DeleteLFTag

=over

=item TagKey => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteLFTag>

Returns: a L<Paws::LakeFormation::DeleteLFTagResponse> instance

Deletes the specified LF-tag given a key name. If the input parameter
tag key was not found, then the operation will throw an exception. When
you delete an LF-tag, the C<LFTagPolicy> attached to the LF-tag becomes
invalid. If the deleted LF-tag was still assigned to any resource, the
tag policy attach to the deleted LF-tag will no longer be applied to
the resource.


=head2 DeleteLFTagExpression

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteLFTagExpression>

Returns: a L<Paws::LakeFormation::DeleteLFTagExpressionResponse> instance

Deletes the LF-Tag expression. The caller must be a data lake admin or
have C<DROP> permissions on the LF-Tag expression. Deleting a LF-Tag
expression will also delete all C<LFTagPolicy> permissions referencing
the LF-Tag expression.


=head2 DeleteObjectsOnCancel

=over

=item DatabaseName => Str

=item Objects => ArrayRef[L<Paws::LakeFormation::VirtualObject>]

=item TableName => Str

=item TransactionId => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteObjectsOnCancel>

Returns: a L<Paws::LakeFormation::DeleteObjectsOnCancelResponse> instance

For a specific governed table, provides a list of Amazon S3 objects
that will be written during the current transaction and that can be
automatically deleted if the transaction is canceled. Without this
call, no Amazon S3 objects are automatically deleted when a transaction
cancels.

The Glue ETL library function C<write_dynamic_frame.from_catalog()>
includes an option to automatically call C<DeleteObjectsOnCancel>
before writes. For more information, see Rolling Back Amazon S3 Writes
(https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes).


=head2 DeregisterResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeregisterResource>

Returns: a L<Paws::LakeFormation::DeregisterResourceResponse> instance

Deregisters the resource as managed by the Data Catalog.

When you deregister a path, Lake Formation removes the path from the
inline policy attached to your service-linked role.


=head2 DescribeLakeFormationIdentityCenterConfiguration

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfiguration>

Returns: a L<Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfigurationResponse> instance

Retrieves the instance ARN and application ARN for the connection.


=head2 DescribeResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::DescribeResource>

Returns: a L<Paws::LakeFormation::DescribeResourceResponse> instance

Retrieves the current data access role for the given resource
registered in Lake Formation.


=head2 DescribeTransaction

=over

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::DescribeTransaction>

Returns: a L<Paws::LakeFormation::DescribeTransactionResponse> instance

Returns the details of a single transaction.


=head2 ExtendTransaction

=over

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ExtendTransaction>

Returns: a L<Paws::LakeFormation::ExtendTransactionResponse> instance

Indicates to the service that the specified transaction is still active
and should not be treated as idle and aborted.

Write transactions that remain idle for a long period are automatically
aborted unless explicitly extended.


=head2 GetDataCellsFilter

=over

=item DatabaseName => Str

=item Name => Str

=item TableCatalogId => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetDataCellsFilter>

Returns: a L<Paws::LakeFormation::GetDataCellsFilterResponse> instance

Returns a data cells filter.


=head2 GetDataLakePrincipal






Each argument is described in detail in: L<Paws::LakeFormation::GetDataLakePrincipal>

Returns: a L<Paws::LakeFormation::GetDataLakePrincipalResponse> instance

Returns the identity of the invoking principal.


=head2 GetDataLakeSettings

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetDataLakeSettings>

Returns: a L<Paws::LakeFormation::GetDataLakeSettingsResponse> instance

Retrieves the list of the data lake administrators of a Lake
Formation-managed data lake.


=head2 GetEffectivePermissionsForPath

=over

=item ResourceArn => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetEffectivePermissionsForPath>

Returns: a L<Paws::LakeFormation::GetEffectivePermissionsForPathResponse> instance

Returns the Lake Formation permissions for a specified table or
database resource located at a path in Amazon S3.
C<GetEffectivePermissionsForPath> will not return databases and tables
if the catalog is encrypted.


=head2 GetLFTag

=over

=item TagKey => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetLFTag>

Returns: a L<Paws::LakeFormation::GetLFTagResponse> instance

Returns an LF-tag definition.


=head2 GetLFTagExpression

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetLFTagExpression>

Returns: a L<Paws::LakeFormation::GetLFTagExpressionResponse> instance

Returns the details about the LF-Tag expression. The caller must be a
data lake admin or must have C<DESCRIBE> permission on the LF-Tag
expression resource.


=head2 GetQueryState

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetQueryState>

Returns: a L<Paws::LakeFormation::GetQueryStateResponse> instance

Returns the state of a query previously submitted. Clients are expected
to poll C<GetQueryState> to monitor the current state of the planning
before retrieving the work units. A query state is only visible to the
principal that made the initial call to C<StartQueryPlanning>.


=head2 GetQueryStatistics

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetQueryStatistics>

Returns: a L<Paws::LakeFormation::GetQueryStatisticsResponse> instance

Retrieves statistics on the planning and execution of a query.


=head2 GetResourceLFTags

=over

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]

=item [ShowAssignedLFTags => Bool]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetResourceLFTags>

Returns: a L<Paws::LakeFormation::GetResourceLFTagsResponse> instance

Returns the LF-tags applied to a resource.


=head2 GetTableObjects

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PartitionPredicate => Str]

=item [QueryAsOfTime => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetTableObjects>

Returns: a L<Paws::LakeFormation::GetTableObjectsResponse> instance

Returns the set of Amazon S3 objects that make up the specified
governed table. A transaction ID or timestamp can be specified for
time-travel queries.


=head2 GetTemporaryGluePartitionCredentials

=over

=item Partition => L<Paws::LakeFormation::PartitionValueList>

=item TableArn => Str

=item [AuditContext => L<Paws::LakeFormation::AuditContext>]

=item [DurationSeconds => Int]

=item [Permissions => ArrayRef[Str|Undef]]

=item [SupportedPermissionTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetTemporaryGluePartitionCredentials>

Returns: a L<Paws::LakeFormation::GetTemporaryGluePartitionCredentialsResponse> instance

This API is identical to C<GetTemporaryTableCredentials> except that
this is used when the target Data Catalog resource is of type
Partition. Lake Formation restricts the permission of the vended
credentials with the same scope down policy which restricts access to a
single Amazon S3 prefix.


=head2 GetTemporaryGlueTableCredentials

=over

=item TableArn => Str

=item [AuditContext => L<Paws::LakeFormation::AuditContext>]

=item [DurationSeconds => Int]

=item [Permissions => ArrayRef[Str|Undef]]

=item [QuerySessionContext => L<Paws::LakeFormation::QuerySessionContext>]

=item [S3Path => Str]

=item [SupportedPermissionTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetTemporaryGlueTableCredentials>

Returns: a L<Paws::LakeFormation::GetTemporaryGlueTableCredentialsResponse> instance

Allows a caller in a secure environment to assume a role with
permission to access Amazon S3. In order to vend such credentials, Lake
Formation assumes the role associated with a registered location, for
example an Amazon S3 bucket, with a scope down policy which restricts
the access to a single prefix.

To call this API, the role that the service assumes must have
C<lakeformation:GetDataAccess> permission on the resource.


=head2 GetWorkUnitResults

=over

=item QueryId => Str

=item WorkUnitId => Int

=item WorkUnitToken => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetWorkUnitResults>

Returns: a L<Paws::LakeFormation::GetWorkUnitResultsResponse> instance

Returns the work units resulting from the query. Work units can be
executed in any order and in parallel.


=head2 GetWorkUnits

=over

=item QueryId => Str

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetWorkUnits>

Returns: a L<Paws::LakeFormation::GetWorkUnitsResponse> instance

Retrieves the work units generated by the C<StartQueryPlanning>
operation.


=head2 GrantPermissions

=over

=item Permissions => ArrayRef[Str|Undef]

=item Principal => L<Paws::LakeFormation::DataLakePrincipal>

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]

=item [Condition => L<Paws::LakeFormation::Condition>]

=item [PermissionsWithGrantOption => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GrantPermissions>

Returns: a L<Paws::LakeFormation::GrantPermissionsResponse> instance

Grants permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon
S3.

For information about permissions, see Security and Access Control to
Metadata and Data
(https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).


=head2 ListDataCellsFilter

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Table => L<Paws::LakeFormation::TableResource>]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListDataCellsFilter>

Returns: a L<Paws::LakeFormation::ListDataCellsFilterResponse> instance

Lists all the data cell filters on a table.


=head2 ListLakeFormationOptIns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => L<Paws::LakeFormation::DataLakePrincipal>]

=item [Resource => L<Paws::LakeFormation::Resource>]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListLakeFormationOptIns>

Returns: a L<Paws::LakeFormation::ListLakeFormationOptInsResponse> instance

Retrieve the current list of resources and principals that are opt in
to enforce Lake Formation permissions.


=head2 ListLFTagExpressions

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListLFTagExpressions>

Returns: a L<Paws::LakeFormation::ListLFTagExpressionsResponse> instance

Returns the LF-Tag expressions in callerE<rsquo>s account filtered
based on caller's permissions. Data Lake and read only admins
implicitly can see all tag expressions in their account, else caller
needs DESCRIBE permissions on tag expression.


=head2 ListLFTags

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareType => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListLFTags>

Returns: a L<Paws::LakeFormation::ListLFTagsResponse> instance

Lists LF-tags that the requester has permission to view.


=head2 ListPermissions

=over

=item [CatalogId => Str]

=item [IncludeRelated => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => L<Paws::LakeFormation::DataLakePrincipal>]

=item [Resource => L<Paws::LakeFormation::Resource>]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListPermissions>

Returns: a L<Paws::LakeFormation::ListPermissionsResponse> instance

Returns a list of the principal permissions on the resource, filtered
by the permissions of the caller. For example, if you are granted an
ALTER permission, you are able to see only the principal permissions
for ALTER.

This operation returns only those permissions that have been explicitly
granted.

For information about permissions, see Security and Access Control to
Metadata and Data
(https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).


=head2 ListResources

=over

=item [FilterConditionList => ArrayRef[L<Paws::LakeFormation::FilterCondition>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListResources>

Returns: a L<Paws::LakeFormation::ListResourcesResponse> instance

Lists the resources registered to be managed by the Data Catalog.


=head2 ListTableStorageOptimizers

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StorageOptimizerType => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListTableStorageOptimizers>

Returns: a L<Paws::LakeFormation::ListTableStorageOptimizersResponse> instance

Returns the configuration of all storage optimizers associated with a
specified table.


=head2 ListTransactions

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListTransactions>

Returns: a L<Paws::LakeFormation::ListTransactionsResponse> instance

Returns metadata about transactions and their status. To prevent the
response from growing indefinitely, only uncommitted transactions and
those available for time-travel queries are returned.

This operation can help you identify uncommitted transactions or to get
information about transactions.


=head2 PutDataLakeSettings

=over

=item DataLakeSettings => L<Paws::LakeFormation::DataLakeSettings>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::PutDataLakeSettings>

Returns: a L<Paws::LakeFormation::PutDataLakeSettingsResponse> instance

Sets the list of data lake administrators who have admin privileges on
all resources managed by Lake Formation. For more information on admin
privileges, see Granting Lake Formation Permissions
(https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

This API replaces the current list of data lake admins with the new
list being passed. To add an admin, fetch the current list and add the
new admin to that list and pass that list in this API.


=head2 RegisterResource

=over

=item ResourceArn => Str

=item [HybridAccessEnabled => Bool]

=item [RoleArn => Str]

=item [UseServiceLinkedRole => Bool]

=item [WithFederation => Bool]

=item [WithPrivilegedAccess => Bool]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RegisterResource>

Returns: a L<Paws::LakeFormation::RegisterResourceResponse> instance

Registers the resource as managed by the Data Catalog.

To add or update data, Lake Formation needs read/write access to the
chosen data location. Choose a role that you know has permission to do
this, or choose the AWSServiceRoleForLakeFormationDataAccess
service-linked role. When you register the first Amazon S3 path, the
service-linked role and a new inline policy are created on your behalf.
Lake Formation adds the first path to the inline policy and attaches it
to the service-linked role. When you register subsequent paths, Lake
Formation adds the path to the existing policy.

The following request registers a new location and gives Lake Formation
permission to use the service-linked role to access that location.

C<ResourceArn = arn:aws:s3:::my-bucket/ UseServiceLinkedRole = true>

If C<UseServiceLinkedRole> is not set to true, you must provide or set
the C<RoleArn>:

C<arn:aws:iam::12345:role/my-data-access-role>


=head2 RemoveLFTagsFromResource

=over

=item LFTags => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RemoveLFTagsFromResource>

Returns: a L<Paws::LakeFormation::RemoveLFTagsFromResourceResponse> instance

Removes an LF-tag from the resource. Only database, table, or
tableWithColumns resource are allowed. To tag columns, use the column
inclusion list in C<tableWithColumns> to specify column input.


=head2 RevokePermissions

=over

=item Permissions => ArrayRef[Str|Undef]

=item Principal => L<Paws::LakeFormation::DataLakePrincipal>

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]

=item [Condition => L<Paws::LakeFormation::Condition>]

=item [PermissionsWithGrantOption => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RevokePermissions>

Returns: a L<Paws::LakeFormation::RevokePermissionsResponse> instance

Revokes permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon
S3.


=head2 SearchDatabasesByLFTags

=over

=item Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::SearchDatabasesByLFTags>

Returns: a L<Paws::LakeFormation::SearchDatabasesByLFTagsResponse> instance

This operation allows a search on C<DATABASE> resources by
C<TagCondition>. This operation is used by admins who want to grant
user permissions on certain C<TagConditions>. Before making a grant,
the admin can use C<SearchDatabasesByTags> to find all resources where
the given C<TagConditions> are valid to verify whether the returned
resources can be shared.


=head2 SearchTablesByLFTags

=over

=item Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::SearchTablesByLFTags>

Returns: a L<Paws::LakeFormation::SearchTablesByLFTagsResponse> instance

This operation allows a search on C<TABLE> resources by C<LFTag>s. This
will be used by admins who want to grant user permissions on certain
LF-tags. Before making a grant, the admin can use
C<SearchTablesByLFTags> to find all resources where the given C<LFTag>s
are valid to verify whether the returned resources can be shared.


=head2 StartQueryPlanning

=over

=item QueryPlanningContext => L<Paws::LakeFormation::QueryPlanningContext>

=item QueryString => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::StartQueryPlanning>

Returns: a L<Paws::LakeFormation::StartQueryPlanningResponse> instance

Submits a request to process a query statement.

This operation generates work units that can be retrieved with the
C<GetWorkUnits> operation as soon as the query state is
WORKUNITS_AVAILABLE or FINISHED.


=head2 StartTransaction

=over

=item [TransactionType => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::StartTransaction>

Returns: a L<Paws::LakeFormation::StartTransactionResponse> instance

Starts a new transaction and returns its transaction ID. Transaction
IDs are opaque objects that you can use to identify a transaction.


=head2 UpdateDataCellsFilter

=over

=item TableData => L<Paws::LakeFormation::DataCellsFilter>


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateDataCellsFilter>

Returns: a L<Paws::LakeFormation::UpdateDataCellsFilterResponse> instance

Updates a data cell filter.


=head2 UpdateLakeFormationIdentityCenterConfiguration

=over

=item [ApplicationStatus => Str]

=item [CatalogId => Str]

=item [ExternalFiltering => L<Paws::LakeFormation::ExternalFilteringConfiguration>]

=item [ShareRecipients => ArrayRef[L<Paws::LakeFormation::DataLakePrincipal>]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateLakeFormationIdentityCenterConfiguration>

Returns: a L<Paws::LakeFormation::UpdateLakeFormationIdentityCenterConfigurationResponse> instance

Updates the IAM Identity Center connection parameters.


=head2 UpdateLFTag

=over

=item TagKey => Str

=item [CatalogId => Str]

=item [TagValuesToAdd => ArrayRef[Str|Undef]]

=item [TagValuesToDelete => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateLFTag>

Returns: a L<Paws::LakeFormation::UpdateLFTagResponse> instance

Updates the list of possible values for the specified LF-tag key. If
the LF-tag does not exist, the operation throws an
EntityNotFoundException. The values in the delete key values will be
deleted from list of possible values. If any value in the delete key
values is attached to a resource, then API errors out with a 400
Exception - "Update not allowed". Untag the attribute before deleting
the LF-tag key's value.


=head2 UpdateLFTagExpression

=over

=item Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

=item Name => Str

=item [CatalogId => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateLFTagExpression>

Returns: a L<Paws::LakeFormation::UpdateLFTagExpressionResponse> instance

Updates the name of the LF-Tag expression to the new description and
expression body provided. Updating a LF-Tag expression immediately
changes the permission boundaries of all existing C<LFTagPolicy>
permission grants that reference the given LF-Tag expression.


=head2 UpdateResource

=over

=item ResourceArn => Str

=item RoleArn => Str

=item [HybridAccessEnabled => Bool]

=item [WithFederation => Bool]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateResource>

Returns: a L<Paws::LakeFormation::UpdateResourceResponse> instance

Updates the data access role used for vending access to the given
(registered) resource in Lake Formation.


=head2 UpdateTableObjects

=over

=item DatabaseName => Str

=item TableName => Str

=item WriteOperations => ArrayRef[L<Paws::LakeFormation::WriteOperation>]

=item [CatalogId => Str]

=item [TransactionId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateTableObjects>

Returns: a L<Paws::LakeFormation::UpdateTableObjectsResponse> instance

Updates the manifest of Amazon S3 objects that make up the specified
governed table.


=head2 UpdateTableStorageOptimizer

=over

=item DatabaseName => Str

=item StorageOptimizerConfig => L<Paws::LakeFormation::StorageOptimizerConfigMap>

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateTableStorageOptimizer>

Returns: a L<Paws::LakeFormation::UpdateTableStorageOptimizerResponse> instance

Updates the configuration of the storage optimizers for a table.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllWorkUnits(sub { },QueryId => Str, [NextToken => Str, PageSize => Int])

=head2 GetAllWorkUnits(QueryId => Str, [NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WorkUnitRanges, passing the object as the first parameter, and the string 'WorkUnitRanges' as the second parameter 

If not, it will return a a L<Paws::LakeFormation::GetWorkUnitsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataCellsFilter(sub { },[MaxResults => Int, NextToken => Str, Table => L<Paws::LakeFormation::TableResource>])

=head2 ListAllDataCellsFilter([MaxResults => Int, NextToken => Str, Table => L<Paws::LakeFormation::TableResource>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataCellsFilters, passing the object as the first parameter, and the string 'DataCellsFilters' as the second parameter 

If not, it will return a a L<Paws::LakeFormation::ListDataCellsFilterResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLFTagExpressions(sub { },[CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllLFTagExpressions([CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LFTagExpressions, passing the object as the first parameter, and the string 'LFTagExpressions' as the second parameter 

If not, it will return a a L<Paws::LakeFormation::ListLFTagExpressionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLFTags(sub { },[CatalogId => Str, MaxResults => Int, NextToken => Str, ResourceShareType => Str])

=head2 ListAllLFTags([CatalogId => Str, MaxResults => Int, NextToken => Str, ResourceShareType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LFTags, passing the object as the first parameter, and the string 'LFTags' as the second parameter 

If not, it will return a a L<Paws::LakeFormation::ListLFTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllDatabasesByLFTags(sub { },Expression => ArrayRef[L<Paws::LakeFormation::LFTag>], [CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 SearchAllDatabasesByLFTags(Expression => ArrayRef[L<Paws::LakeFormation::LFTag>], [CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatabaseList, passing the object as the first parameter, and the string 'DatabaseList' as the second parameter 

If not, it will return a a L<Paws::LakeFormation::SearchDatabasesByLFTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllTablesByLFTags(sub { },Expression => ArrayRef[L<Paws::LakeFormation::LFTag>], [CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 SearchAllTablesByLFTags(Expression => ArrayRef[L<Paws::LakeFormation::LFTag>], [CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableList, passing the object as the first parameter, and the string 'TableList' as the second parameter 

If not, it will return a a L<Paws::LakeFormation::SearchTablesByLFTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

