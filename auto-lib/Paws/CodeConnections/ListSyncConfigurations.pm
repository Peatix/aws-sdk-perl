
package Paws::CodeConnections::ListSyncConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RepositoryLinkId => (is => 'ro', isa => 'Str', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSyncConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::ListSyncConfigurationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::ListSyncConfigurations - Arguments for method ListSyncConfigurations on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSyncConfigurations on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method ListSyncConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSyncConfigurations.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $ListSyncConfigurationsOutput = $codeconnections->ListSyncConfigurations(
      RepositoryLinkId => 'MyRepositoryLinkId',
      SyncType         => 'CFN_STACK_SYNC',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MySharpNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken          = $ListSyncConfigurationsOutput->NextToken;
    my $SyncConfigurations = $ListSyncConfigurationsOutput->SyncConfigurations;

    # Returns a L<Paws::CodeConnections::ListSyncConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/ListSyncConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

A non-zero, non-negative integer used to limit the number of returned
results.



=head2 NextToken => Str

An enumeration token that allows the operation to batch the results of
the operation.



=head2 B<REQUIRED> RepositoryLinkId => Str

The ID of the repository link for the requested list of sync
configurations.



=head2 B<REQUIRED> SyncType => Str

The sync type for the requested list of sync configurations.

Valid values are: C<"CFN_STACK_SYNC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSyncConfigurations in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

