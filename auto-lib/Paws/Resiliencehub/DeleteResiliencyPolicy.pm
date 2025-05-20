
package Paws::Resiliencehub::DeleteResiliencyPolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResiliencyPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-resiliency-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DeleteResiliencyPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteResiliencyPolicy - Arguments for method DeleteResiliencyPolicy on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResiliencyPolicy on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DeleteResiliencyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResiliencyPolicy.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DeleteResiliencyPolicyResponse = $resiliencehub->DeleteResiliencyPolicy(
      PolicyArn   => 'MyArn',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $PolicyArn = $DeleteResiliencyPolicyResponse->PolicyArn;

    # Returns a L<Paws::Resiliencehub::DeleteResiliencyPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DeleteResiliencyPolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.



=head2 B<REQUIRED> PolicyArn => Str

Amazon Resource Name (ARN) of the resiliency policy. The format for
this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:resiliency-policy/C<policy-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResiliencyPolicy in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

