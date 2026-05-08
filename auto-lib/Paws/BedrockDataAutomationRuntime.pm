package Paws::BedrockDataAutomationRuntime;
  use Moose;
  sub service { 'bedrock-data-automation-runtime' }
  sub signing_name { 'bedrock' }
  sub version { '2024-06-13' }
  sub target_prefix { 'AmazonBedrockKeystoneRuntimeService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetDataAutomationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomationRuntime::GetDataAutomationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeDataAutomationAsync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomationRuntime::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomationRuntime::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BedrockDataAutomationRuntime::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetDataAutomationStatus InvokeDataAutomationAsync ListTagsForResource TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime - Perl Interface to AWS Runtime for Amazon Bedrock Data Automation

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BedrockDataAutomationRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Bedrock Data Automation Runtime

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13>


=head1 METHODS

=head2 GetDataAutomationStatus

=over

=item InvocationArn => Str


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomationRuntime::GetDataAutomationStatus>

Returns: a L<Paws::BedrockDataAutomationRuntime::GetDataAutomationStatusResponse> instance

API used to get data automation status.


=head2 InvokeDataAutomationAsync

=over

=item DataAutomationProfileArn => Str

=item InputConfiguration => L<Paws::BedrockDataAutomationRuntime::InputConfiguration>

=item OutputConfiguration => L<Paws::BedrockDataAutomationRuntime::OutputConfiguration>

=item [Blueprints => ArrayRef[L<Paws::BedrockDataAutomationRuntime::Blueprint>]]

=item [ClientToken => Str]

=item [DataAutomationConfiguration => L<Paws::BedrockDataAutomationRuntime::DataAutomationConfiguration>]

=item [EncryptionConfiguration => L<Paws::BedrockDataAutomationRuntime::EncryptionConfiguration>]

=item [NotificationConfiguration => L<Paws::BedrockDataAutomationRuntime::NotificationConfiguration>]

=item [Tags => ArrayRef[L<Paws::BedrockDataAutomationRuntime::Tag>]]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsync>

Returns: a L<Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsyncResponse> instance

Async API: Invoke data automation.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomationRuntime::ListTagsForResource>

Returns: a L<Paws::BedrockDataAutomationRuntime::ListTagsForResourceResponse> instance

List tags for an Amazon Bedrock Data Automation resource


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::BedrockDataAutomationRuntime::Tag>]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomationRuntime::TagResource>

Returns: a L<Paws::BedrockDataAutomationRuntime::TagResourceResponse> instance

Tag an Amazon Bedrock Data Automation resource


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BedrockDataAutomationRuntime::UntagResource>

Returns: a L<Paws::BedrockDataAutomationRuntime::UntagResourceResponse> instance

Untag an Amazon Bedrock Data Automation resource




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

