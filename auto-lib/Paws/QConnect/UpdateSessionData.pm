
package Paws::QConnect::UpdateSessionData;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has Data => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::RuntimeSessionData]', traits => ['NameInRequest'], request_name => 'data', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSessionData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/sessions/{sessionId}/data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateSessionDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateSessionData - Arguments for method UpdateSessionData on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSessionData on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateSessionData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSessionData.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateSessionDataResponse = $wisdom->UpdateSessionData(
      AssistantId => 'MyUuidOrArn',
      Data        => [
        {
          Key   => 'MyNonEmptySensitiveString',    # min: 1, max: 4096
          Value => {
            StringValue => 'MyNonEmptySensitiveString',    # min: 1, max: 4096
          },

        },
        ...
      ],
      SessionId => 'MyUuidOrArn',
      Namespace => 'Custom',        # OPTIONAL
    );

    # Results:
    my $Data       = $UpdateSessionDataResponse->Data;
    my $Namespace  = $UpdateSessionDataResponse->Namespace;
    my $SessionArn = $UpdateSessionDataResponse->SessionArn;
    my $SessionId  = $UpdateSessionDataResponse->SessionId;

    # Returns a L<Paws::QConnect::UpdateSessionDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateSessionData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 B<REQUIRED> Data => ArrayRef[L<Paws::QConnect::RuntimeSessionData>]

The data stored on the Amazon Q in Connect Session.



=head2 Namespace => Str

The namespace into which the session data is stored. Supported
namespaces are: Custom

Valid values are: C<"Custom">

=head2 B<REQUIRED> SessionId => Str

The identifier of the session. Can be either the ID or the ARN. URLs
cannot contain the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSessionData in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

