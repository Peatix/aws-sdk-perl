
package Paws::SSM::StartAccessRequest;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAccessRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartAccessRequestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAccessRequest - Arguments for method StartAccessRequest on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAccessRequest on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartAccessRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAccessRequest.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartAccessRequestResponse = $ssm->StartAccessRequest(
      Reason  => 'MyString1to256',
      Targets => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],
      Tags => [
        {
          Key   => 'MyTagKey',                   # min: 1, max: 128
          Value => 'MyTagValue',                 # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AccessRequestId = $StartAccessRequestResponse->AccessRequestId;

    # Returns a L<Paws::SSM::StartAccessRequestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartAccessRequest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Reason => Str

A brief description explaining why you are requesting access to the
node.



=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Key-value pairs of metadata you want to assign to the access request.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::SSM::Target>]

The node you are requesting access to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAccessRequest in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

