
package Paws::OAM::PutSinkPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has SinkIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSinkPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutSinkPolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::PutSinkPolicyOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::PutSinkPolicy - Arguments for method PutSinkPolicy on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSinkPolicy on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method PutSinkPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSinkPolicy.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $PutSinkPolicyOutput = $oam->PutSinkPolicy(
      Policy         => 'MySinkPolicy',
      SinkIdentifier => 'MyResourceIdentifier',

    );

    # Results:
    my $Policy  = $PutSinkPolicyOutput->Policy;
    my $SinkArn = $PutSinkPolicyOutput->SinkArn;
    my $SinkId  = $PutSinkPolicyOutput->SinkId;

    # Returns a L<Paws::OAM::PutSinkPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/PutSinkPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The JSON policy to use. If you are updating an existing policy, the
entire existing policy is replaced by what you specify here.

The policy must be in JSON string format with quotation marks escaped
and no newlines.

For examples of different types of policies, see the B<Examples>
section on this page.



=head2 B<REQUIRED> SinkIdentifier => Str

The ARN of the sink to attach this policy to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSinkPolicy in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

