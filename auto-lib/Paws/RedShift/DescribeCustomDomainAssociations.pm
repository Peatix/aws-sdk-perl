
package Paws::RedShift::DescribeCustomDomainAssociations;
  use Moose;
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str');
  has CustomDomainName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomDomainAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CustomDomainAssociationsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCustomDomainAssociationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeCustomDomainAssociations - Arguments for method DescribeCustomDomainAssociations on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomDomainAssociations on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeCustomDomainAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomDomainAssociations.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CustomDomainAssociationsMessage =
      $redshift->DescribeCustomDomainAssociations(
      CustomDomainCertificateArn =>
        'MyCustomDomainCertificateArnString',    # OPTIONAL
      CustomDomainName => 'MyCustomDomainNameString',    # OPTIONAL
      Marker           => 'MyString',                    # OPTIONAL
      MaxRecords       => 1,                             # OPTIONAL
      );

    # Results:
    my $Associations = $CustomDomainAssociationsMessage->Associations;
    my $Marker       = $CustomDomainAssociationsMessage->Marker;

    # Returns a L<Paws::RedShift::CustomDomainAssociationsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeCustomDomainAssociations>

=head1 ATTRIBUTES


=head2 CustomDomainCertificateArn => Str

The certificate Amazon Resource Name (ARN) for the custom domain
association.



=head2 CustomDomainName => Str

The custom domain name for the custom domain association.



=head2 Marker => Str

The marker for the custom domain association.



=head2 MaxRecords => Int

The maximum records setting for the associated custom domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomDomainAssociations in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

