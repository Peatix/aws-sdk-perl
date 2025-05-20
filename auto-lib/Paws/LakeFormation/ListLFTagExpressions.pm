
package Paws::LakeFormation::ListLFTagExpressions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLFTagExpressions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListLFTagExpressions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListLFTagExpressionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListLFTagExpressions - Arguments for method ListLFTagExpressions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLFTagExpressions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListLFTagExpressions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLFTagExpressions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListLFTagExpressionsResponse = $lakeformation->ListLFTagExpressions(
      CatalogId  => 'MyCatalogIdString',    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyToken',              # OPTIONAL
    );

    # Results:
    my $LFTagExpressions = $ListLFTagExpressionsResponse->LFTagExpressions;
    my $NextToken        = $ListLFTagExpressionsResponse->NextToken;

    # Returns a L<Paws::LakeFormation::ListLFTagExpressionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListLFTagExpressions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLFTagExpressions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

