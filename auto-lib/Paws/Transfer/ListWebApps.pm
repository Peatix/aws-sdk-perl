
package Paws::Transfer::ListWebApps;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWebApps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListWebAppsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListWebApps - Arguments for method ListWebApps on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWebApps on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListWebApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWebApps.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListWebAppsResponse = $transfer->ListWebApps(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListWebAppsResponse->NextToken;
    my $WebApps   = $ListWebAppsResponse->WebApps;

    # Returns a L<Paws::Transfer::ListWebAppsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListWebApps>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

Returns the C<NextToken> parameter in the output. You can then pass the
C<NextToken> parameter in a subsequent command to continue listing
additional web apps.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWebApps in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

