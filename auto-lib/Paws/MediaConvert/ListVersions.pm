
package Paws::MediaConvert::ListVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::ListVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListVersions - Arguments for method ListVersions on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVersions on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method ListVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVersions.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $ListVersionsResponse = $mediaconvert->ListVersions(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListVersionsResponse->NextToken;
    my $Versions  = $ListVersionsResponse->Versions;

    # Returns a L<Paws::MediaConvert::ListVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/ListVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Optional. Number of valid Job engine versions, up to twenty, that will
be returned at one time.



=head2 NextToken => Str

Optional. Use this string, provided with the response to a previous
request, to request the next batch of Job engine versions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVersions in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

