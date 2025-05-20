
package Paws::LakeFormation::DeleteLFTagExpression;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLFTagExpression');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteLFTagExpression');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::DeleteLFTagExpressionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DeleteLFTagExpression - Arguments for method DeleteLFTagExpression on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLFTagExpression on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method DeleteLFTagExpression.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLFTagExpression.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $DeleteLFTagExpressionResponse = $lakeformation->DeleteLFTagExpression(
      Name      => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/DeleteLFTagExpression>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID in
which the LF-Tag expression is saved.



=head2 B<REQUIRED> Name => Str

The name for the LF-Tag expression.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLFTagExpression in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

