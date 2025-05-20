
package Paws::Omics::DeleteS3AccessPolicy;
  use Moose;
  has S3AccessPointArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 's3AccessPointArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteS3AccessPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/s3accesspolicy/{s3AccessPointArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::DeleteS3AccessPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteS3AccessPolicy - Arguments for method DeleteS3AccessPolicy on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteS3AccessPolicy on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method DeleteS3AccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteS3AccessPolicy.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $DeleteS3AccessPolicyResponse = $omics->DeleteS3AccessPolicy(
      S3AccessPointArn => 'MyS3AccessPointArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/DeleteS3AccessPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3AccessPointArn => Str

The S3 access point ARN that has the access policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteS3AccessPolicy in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

