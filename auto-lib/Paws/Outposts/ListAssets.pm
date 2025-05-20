
package Paws::Outposts::ListAssets;
  use Moose;
  has HostIdFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'HostIdFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OutpostIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);
  has StatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'StatusFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}/assets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListAssetsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListAssets - Arguments for method ListAssets on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssets on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssets.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListAssetsOutput = $outposts->ListAssets(
      OutpostIdentifier => 'MyOutpostIdentifier',
      HostIdFilter      => [
        'MyHostId', ...    # min: 1, max: 50
      ],    # OPTIONAL
      MaxResults   => 1,            # OPTIONAL
      NextToken    => 'MyToken',    # OPTIONAL
      StatusFilter => [
        'ACTIVE', ...               # values: ACTIVE, RETIRING, ISOLATED
      ],    # OPTIONAL
    );

    # Results:
    my $Assets    = $ListAssetsOutput->Assets;
    my $NextToken = $ListAssetsOutput->NextToken;

    # Returns a L<Paws::Outposts::ListAssetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListAssets>

=head1 ATTRIBUTES


=head2 HostIdFilter => ArrayRef[Str|Undef]

Filters the results by the host ID of a Dedicated Host.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 B<REQUIRED> OutpostIdentifier => Str

The ID or the Amazon Resource Name (ARN) of the Outpost.



=head2 StatusFilter => ArrayRef[Str|Undef]

Filters the results by state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssets in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

