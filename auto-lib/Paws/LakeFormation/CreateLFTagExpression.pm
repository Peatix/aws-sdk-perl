
package Paws::LakeFormation::CreateLFTagExpression;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTag]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLFTagExpression');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateLFTagExpression');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::CreateLFTagExpressionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::CreateLFTagExpression - Arguments for method CreateLFTagExpression on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLFTagExpression on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method CreateLFTagExpression.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLFTagExpression.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $CreateLFTagExpressionResponse = $lakeformation->CreateLFTagExpression(
      Expression => [
        {
          TagKey    => 'MyLFTagKey',    # min: 1, max: 128
          TagValues => [
            'MyLFTagValue', ...         # max: 256
          ],    # min: 1, max: 50

        },
        ...
      ],
      Name        => 'MyNameString',
      CatalogId   => 'MyCatalogIdString',      # OPTIONAL
      Description => 'MyDescriptionString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/CreateLFTagExpression>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.



=head2 Description => Str

A description with information about the LF-Tag expression.



=head2 B<REQUIRED> Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

A list of LF-Tag conditions (key-value pairs).



=head2 B<REQUIRED> Name => Str

A name for the expression.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLFTagExpression in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

