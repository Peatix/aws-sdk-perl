
package Paws::AppSync::DeleteChannelNamespace;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannelNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/channelNamespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::DeleteChannelNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DeleteChannelNamespace - Arguments for method DeleteChannelNamespace on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannelNamespace on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method DeleteChannelNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannelNamespace.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $DeleteChannelNamespaceResponse = $appsync->DeleteChannelNamespace(
      ApiId => 'MyString',
      Name  => 'MyNamespace',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/DeleteChannelNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID of the C<Api> associated with the C<ChannelNamespace>.



=head2 B<REQUIRED> Name => Str

The name of the C<ChannelNamespace>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannelNamespace in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

