
package Paws::MailManager::GetIngressPoint;
  use Moose;
  has IngressPointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIngressPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::GetIngressPointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetIngressPoint - Arguments for method GetIngressPoint on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIngressPoint on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method GetIngressPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIngressPoint.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $GetIngressPointResponse = $mail -manager->GetIngressPoint(
      IngressPointId => 'MyIngressPointId',

    );

    # Results:
    my $ARecord          = $GetIngressPointResponse->ARecord;
    my $CreatedTimestamp = $GetIngressPointResponse->CreatedTimestamp;
    my $IngressPointArn  = $GetIngressPointResponse->IngressPointArn;
    my $IngressPointAuthConfiguration =
      $GetIngressPointResponse->IngressPointAuthConfiguration;
    my $IngressPointId       = $GetIngressPointResponse->IngressPointId;
    my $IngressPointName     = $GetIngressPointResponse->IngressPointName;
    my $LastUpdatedTimestamp = $GetIngressPointResponse->LastUpdatedTimestamp;
    my $NetworkConfiguration = $GetIngressPointResponse->NetworkConfiguration;
    my $RuleSetId            = $GetIngressPointResponse->RuleSetId;
    my $Status               = $GetIngressPointResponse->Status;
    my $TrafficPolicyId      = $GetIngressPointResponse->TrafficPolicyId;
    my $Type                 = $GetIngressPointResponse->Type;

    # Returns a L<Paws::MailManager::GetIngressPointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/GetIngressPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngressPointId => Str

The identifier of an ingress endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIngressPoint in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

