
package Paws::Resiliencehub::DescribeResiliencyPolicy;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResiliencyPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-resiliency-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::DescribeResiliencyPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeResiliencyPolicy - Arguments for method DescribeResiliencyPolicy on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResiliencyPolicy on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method DescribeResiliencyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResiliencyPolicy.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $DescribeResiliencyPolicyResponse =
      $resiliencehub->DescribeResiliencyPolicy(
      PolicyArn => 'MyArn',

      );

    # Results:
    my $Policy = $DescribeResiliencyPolicyResponse->Policy;

    # Returns a L<Paws::Resiliencehub::DescribeResiliencyPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/DescribeResiliencyPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

Amazon Resource Name (ARN) of the resiliency policy. The format for
this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:resiliency-policy/C<policy-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResiliencyPolicy in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

