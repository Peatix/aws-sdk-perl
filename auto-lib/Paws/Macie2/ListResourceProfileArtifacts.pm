
package Paws::Macie2::ListResourceProfileArtifacts;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceProfileArtifacts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-profiles/artifacts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::ListResourceProfileArtifactsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListResourceProfileArtifacts - Arguments for method ListResourceProfileArtifacts on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceProfileArtifacts on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method ListResourceProfileArtifacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceProfileArtifacts.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $ListResourceProfileArtifactsResponse =
      $macie2->ListResourceProfileArtifacts(
      ResourceArn => 'My__string',
      NextToken   => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Artifacts = $ListResourceProfileArtifactsResponse->Artifacts;
    my $NextToken = $ListResourceProfileArtifactsResponse->NextToken;

    # Returns a L<Paws::Macie2::ListResourceProfileArtifactsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/ListResourceProfileArtifacts>

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the S3 bucket that the request
applies to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceProfileArtifacts in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

