
package Paws::Transfer::ListHostKeys;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListHostKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListHostKeys - Arguments for method ListHostKeys on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHostKeys on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListHostKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHostKeys.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListHostKeysResponse = $transfer->ListHostKeys(
      ServerId   => 'MyServerId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $HostKeys  = $ListHostKeysResponse->HostKeys;
    my $NextToken = $ListHostKeysResponse->NextToken;
    my $ServerId  = $ListHostKeysResponse->ServerId;

    # Returns a L<Paws::Transfer::ListHostKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListHostKeys>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

When there are additional results that were not returned, a
C<NextToken> parameter is returned. You can use that value for a
subsequent call to C<ListHostKeys> to continue listing results.



=head2 B<REQUIRED> ServerId => Str

The identifier of the server that contains the host keys that you want
to view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHostKeys in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

