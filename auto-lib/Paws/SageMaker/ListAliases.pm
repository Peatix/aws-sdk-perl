
package Paws::SageMaker::ListAliases;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListAliasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAliases - Arguments for method ListAliases on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAliases on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAliases.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListAliasesResponse = $api . sagemaker->ListAliases(
      ImageName  => 'MyImageName',
      Alias      => 'MySageMakerImageVersionAlias',    # OPTIONAL
      MaxResults => 1,                                 # OPTIONAL
      NextToken  => 'MyNextToken',                     # OPTIONAL
      Version    => 1,                                 # OPTIONAL
    );

    # Results:
    my $NextToken = $ListAliasesResponse->NextToken;
    my $SageMakerImageVersionAliases =
      $ListAliasesResponse->SageMakerImageVersionAliases;

    # Returns a L<Paws::SageMaker::ListAliasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListAliases>

=head1 ATTRIBUTES


=head2 Alias => Str

The alias of the image version.



=head2 B<REQUIRED> ImageName => Str

The name of the image.



=head2 MaxResults => Int

The maximum number of aliases to return.



=head2 NextToken => Str

If the previous call to C<ListAliases> didn't return the full set of
aliases, the call returns a token for retrieving the next set of
aliases.



=head2 Version => Int

The version of the image. If image version is not specified, the
aliases of all versions of the image are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAliases in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

