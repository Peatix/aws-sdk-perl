
package Paws::Glue::DescribeInboundIntegrations;
  use Moose;
  has IntegrationArn => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has TargetArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInboundIntegrations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DescribeInboundIntegrationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeInboundIntegrations - Arguments for method DescribeInboundIntegrations on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInboundIntegrations on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DescribeInboundIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInboundIntegrations.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DescribeInboundIntegrationsResponse =
      $glue->DescribeInboundIntegrations(
      IntegrationArn => 'MyString128',    # OPTIONAL
      Marker         => 'MyString128',    # OPTIONAL
      MaxRecords     => 1,                # OPTIONAL
      TargetArn      => 'MyString128',    # OPTIONAL
      );

    # Results:
    my $InboundIntegrations =
      $DescribeInboundIntegrationsResponse->InboundIntegrations;
    my $Marker = $DescribeInboundIntegrationsResponse->Marker;

    # Returns a L<Paws::Glue::DescribeInboundIntegrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DescribeInboundIntegrations>

=head1 ATTRIBUTES


=head2 IntegrationArn => Str

The Amazon Resource Name (ARN) of the integration.



=head2 Marker => Str

A token to specify where to start paginating. This is the marker from a
previously truncated response.



=head2 MaxRecords => Int

The total number of items to return in the output.



=head2 TargetArn => Str

The Amazon Resource Name (ARN) of the target resource in the
integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInboundIntegrations in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

