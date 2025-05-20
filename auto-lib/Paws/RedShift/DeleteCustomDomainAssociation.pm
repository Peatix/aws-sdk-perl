
package Paws::RedShift::DeleteCustomDomainAssociation;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has CustomDomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomDomainAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteCustomDomainAssociation - Arguments for method DeleteCustomDomainAssociation on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomDomainAssociation on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteCustomDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomDomainAssociation.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->DeleteCustomDomainAssociation(
      ClusterIdentifier => 'MyString',
      CustomDomainName  => 'MyCustomDomainNameString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteCustomDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster to delete a custom domain association
for.



=head2 B<REQUIRED> CustomDomainName => Str

The custom domain name for the custom domain association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomDomainAssociation in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

