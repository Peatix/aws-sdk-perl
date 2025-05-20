
package Paws::KafkaConnect::CreateCustomPlugin;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Location => (is => 'ro', isa => 'Paws::KafkaConnect::CustomPluginLocation', traits => ['NameInRequest'], request_name => 'location', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::KafkaConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomPlugin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/custom-plugins');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::CreateCustomPluginResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CreateCustomPlugin - Arguments for method CreateCustomPlugin on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomPlugin on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method CreateCustomPlugin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomPlugin.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $CreateCustomPluginResponse = $kafkaconnect->CreateCustomPlugin(
      ContentType => 'JAR',
      Location    => {
        S3Location => {
          BucketArn     => 'My__string',
          FileKey       => 'My__string',
          ObjectVersion => 'My__string',
        },

      },
      Name        => 'My__stringMin1Max128',
      Description => 'My__stringMax1024',      # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CustomPluginArn   = $CreateCustomPluginResponse->CustomPluginArn;
    my $CustomPluginState = $CreateCustomPluginResponse->CustomPluginState;
    my $Name              = $CreateCustomPluginResponse->Name;
    my $Revision          = $CreateCustomPluginResponse->Revision;

    # Returns a L<Paws::KafkaConnect::CreateCustomPluginResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/CreateCustomPlugin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentType => Str

The type of the plugin file.

Valid values are: C<"JAR">, C<"ZIP">

=head2 Description => Str

A summary description of the custom plugin.



=head2 B<REQUIRED> Location => L<Paws::KafkaConnect::CustomPluginLocation>

Information about the location of a custom plugin.



=head2 B<REQUIRED> Name => Str

The name of the custom plugin.



=head2 Tags => L<Paws::KafkaConnect::Tags>

The tags you want to attach to the custom plugin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomPlugin in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

