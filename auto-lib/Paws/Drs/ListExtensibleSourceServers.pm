
package Paws::Drs::ListExtensibleSourceServers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StagingAccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stagingAccountID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExtensibleSourceServers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListExtensibleSourceServers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ListExtensibleSourceServersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListExtensibleSourceServers - Arguments for method ListExtensibleSourceServers on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExtensibleSourceServers on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method ListExtensibleSourceServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExtensibleSourceServers.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ListExtensibleSourceServersResponse = $drs->ListExtensibleSourceServers(
      StagingAccountID => 'MyAccountID',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListExtensibleSourceServersResponse->Items;
    my $NextToken = $ListExtensibleSourceServersResponse->NextToken;

    # Returns a L<Paws::Drs::ListExtensibleSourceServersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/ListExtensibleSourceServers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of extensible source servers to retrieve.



=head2 NextToken => Str

The token of the next extensible source server to retrieve.



=head2 B<REQUIRED> StagingAccountID => Str

The Id of the staging Account to retrieve extensible source servers
from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExtensibleSourceServers in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

