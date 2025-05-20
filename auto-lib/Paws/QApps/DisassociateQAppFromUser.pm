
package Paws::QApps::DisassociateQAppFromUser;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateQAppFromUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.uninstall');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::DisassociateQAppFromUser - Arguments for method DisassociateQAppFromUser on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateQAppFromUser on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method DisassociateQAppFromUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateQAppFromUser.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    $data . qapps->DisassociateQAppFromUser(
      AppId      => 'MyUUID',
      InstanceId => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/DisassociateQAppFromUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App to disassociate from the user.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateQAppFromUser in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

