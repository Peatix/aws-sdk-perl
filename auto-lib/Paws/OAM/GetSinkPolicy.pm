
package Paws::OAM::GetSinkPolicy;
  use Moose;
  has SinkIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSinkPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetSinkPolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::GetSinkPolicyOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::GetSinkPolicy - Arguments for method GetSinkPolicy on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSinkPolicy on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method GetSinkPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSinkPolicy.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $GetSinkPolicyOutput = $oam->GetSinkPolicy(
      SinkIdentifier => 'MyResourceIdentifier',

    );

    # Results:
    my $Policy  = $GetSinkPolicyOutput->Policy;
    my $SinkArn = $GetSinkPolicyOutput->SinkArn;
    my $SinkId  = $GetSinkPolicyOutput->SinkId;

    # Returns a L<Paws::OAM::GetSinkPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/GetSinkPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SinkIdentifier => Str

The ARN of the sink to retrieve the policy of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSinkPolicy in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

