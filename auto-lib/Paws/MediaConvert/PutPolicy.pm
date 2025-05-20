
package Paws::MediaConvert::PutPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::MediaConvert::Policy', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::PutPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::PutPolicy - Arguments for method PutPolicy on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPolicy on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method PutPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPolicy.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $PutPolicyResponse = $mediaconvert->PutPolicy(
      Policy => {
        HttpInputs  => 'ALLOWED',    # values: ALLOWED, DISALLOWED; OPTIONAL
        HttpsInputs => 'ALLOWED',    # values: ALLOWED, DISALLOWED; OPTIONAL
        S3Inputs    => 'ALLOWED',    # values: ALLOWED, DISALLOWED; OPTIONAL
      },

    );

    # Results:
    my $Policy = $PutPolicyResponse->Policy;

    # Returns a L<Paws::MediaConvert::PutPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/PutPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => L<Paws::MediaConvert::Policy>

A policy configures behavior that you allow or disallow for your
account. For information about MediaConvert policies, see the user
guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPolicy in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

