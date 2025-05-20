
package Paws::SESv2::GetMessageInsights;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MessageId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMessageInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/insights/{MessageId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetMessageInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetMessageInsights - Arguments for method GetMessageInsights on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMessageInsights on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetMessageInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMessageInsights.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetMessageInsightsResponse = $email->GetMessageInsights(
      MessageId => 'MyOutboundMessageId',

    );

    # Results:
    my $EmailTags        = $GetMessageInsightsResponse->EmailTags;
    my $FromEmailAddress = $GetMessageInsightsResponse->FromEmailAddress;
    my $Insights         = $GetMessageInsightsResponse->Insights;
    my $MessageId        = $GetMessageInsightsResponse->MessageId;
    my $Subject          = $GetMessageInsightsResponse->Subject;

    # Returns a L<Paws::SESv2::GetMessageInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetMessageInsights>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageId => Str

A C<MessageId> is a unique identifier for a message, and is returned
when sending emails through Amazon SES.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMessageInsights in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

