
package Paws::PcaConnectorAd::ListDirectoryRegistrations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDirectoryRegistrations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/directoryRegistrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorAd::ListDirectoryRegistrationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListDirectoryRegistrations - Arguments for method ListDirectoryRegistrations on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDirectoryRegistrations on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method ListDirectoryRegistrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDirectoryRegistrations.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    my $ListDirectoryRegistrationsResponse =
      $pca -connector-ad->ListDirectoryRegistrations(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $DirectoryRegistrations =
      $ListDirectoryRegistrationsResponse->DirectoryRegistrations;
    my $NextToken = $ListDirectoryRegistrationsResponse->NextToken;

 # Returns a L<Paws::PcaConnectorAd::ListDirectoryRegistrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/ListDirectoryRegistrations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Use this parameter when paginating results to specify the maximum
number of items to return in the response on each page. If additional
items exist beyond the number you specify, the C<NextToken> element is
sent in the response. Use this C<NextToken> value in a subsequent
request to retrieve additional items.



=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of the C<NextToken> parameter from the response you just
received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDirectoryRegistrations in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

