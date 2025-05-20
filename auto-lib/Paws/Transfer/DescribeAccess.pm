
package Paws::Transfer::DescribeAccess;
  use Moose;
  has ExternalId => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeAccessResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeAccess - Arguments for method DescribeAccess on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccess on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccess.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeAccessResponse = $transfer->DescribeAccess(
      ExternalId => 'MyExternalId',
      ServerId   => 'MyServerId',

    );

    # Results:
    my $Access   = $DescribeAccessResponse->Access;
    my $ServerId = $DescribeAccessResponse->ServerId;

    # Returns a L<Paws::Transfer::DescribeAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExternalId => Str

A unique identifier that is required to identify specific groups within
your directory. The users of the group that you associate have access
to your Amazon S3 or Amazon EFS resources over the enabled protocols
using Transfer Family. If you know the group name, you can view the SID
values by running the following command using Windows PowerShell.

C<Get-ADGroup -Filter {samAccountName -like "I<YourGroupName>*"}
-Properties * | Select SamAccountName,ObjectSid>

In that command, replace I<YourGroupName> with the name of your Active
Directory group.

The regular expression used to validate this parameter is a string of
characters consisting of uppercase and lowercase alphanumeric
characters with no spaces. You can also include underscores or any of
the following characters: =,.@:/-



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server that has this access
assigned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccess in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

