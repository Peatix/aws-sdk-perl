
package Paws::LicenseManager::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::TagResource - Arguments for method TagResource on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $TagResourceResponse = $license -manager->TagResource(
      ResourceArn => 'MyString',
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) of the resource. The following examples
provide an example ARN for each supported resource in License Manager:

=over

=item *

Licenses -
C<arn:aws:license-manager::111122223333:license:l-EXAMPLE2da7646d6861033667f20e895>

=item *

Grants -
C<arn:aws:license-manager::111122223333:grant:g-EXAMPLE7b19f4a0ab73679b0beb52707>

=item *

License configurations -
C<arn:aws:license-manager:us-east-1:111122223333:license-configuration:lic-EXAMPLE6a788d4c8acd4264ff0ecf2ed2d>

=item *

Report generators -
C<arn:aws:license-manager:us-east-1:111122223333:report-generator:r-EXAMPLE825b4a4f8fe5a3e0c88824e5fc6>

=back




=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

