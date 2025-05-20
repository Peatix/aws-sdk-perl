
package Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplate;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', required => 1);
  has QuotaCode => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServiceQuotaIncreaseRequestFromTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplate - Arguments for method DeleteServiceQuotaIncreaseRequestFromTemplate on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceQuotaIncreaseRequestFromTemplate on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method DeleteServiceQuotaIncreaseRequestFromTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceQuotaIncreaseRequestFromTemplate.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $DeleteServiceQuotaIncreaseRequestFromTemplateResponse =
      $servicequotas->DeleteServiceQuotaIncreaseRequestFromTemplate(
      AwsRegion   => 'MyAwsRegion',
      QuotaCode   => 'MyQuotaCode',
      ServiceCode => 'MyServiceCode',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/DeleteServiceQuotaIncreaseRequestFromTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsRegion => Str

Specifies the Amazon Web Services Region for which the request was
made.



=head2 B<REQUIRED> QuotaCode => Str

Specifies the quota identifier. To find the quota code for a specific
quota, use the ListServiceQuotas operation, and look for the
C<QuotaCode> response in the output for the quota you want.



=head2 B<REQUIRED> ServiceCode => Str

Specifies the service identifier. To find the service code value for an
Amazon Web Services service, use the ListServices operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceQuotaIncreaseRequestFromTemplate in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

