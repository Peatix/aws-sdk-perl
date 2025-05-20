
package Paws::ConnectCampaigns::StartCampaign;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCampaign');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/campaigns/{id}/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::StartCampaign - Arguments for method StartCampaign on L<Paws::ConnectCampaigns>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCampaign on the
L<AmazonConnectCampaignService|Paws::ConnectCampaigns> service. Use the attributes of this class
as arguments to method StartCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCampaign.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaigns');
    $connect -campaigns->StartCampaign(
      Id => 'MyCampaignId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/StartCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCampaign in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

