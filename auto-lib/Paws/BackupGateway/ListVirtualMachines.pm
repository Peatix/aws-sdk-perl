
package Paws::BackupGateway::ListVirtualMachines;
  use Moose;
  has HypervisorArn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualMachines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::ListVirtualMachinesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::ListVirtualMachines - Arguments for method ListVirtualMachines on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVirtualMachines on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method ListVirtualMachines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVirtualMachines.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $ListVirtualMachinesOutput = $backup -gateway->ListVirtualMachines(
      HypervisorArn => 'MyServerArn',    # OPTIONAL
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListVirtualMachinesOutput->NextToken;
    my $VirtualMachines = $ListVirtualMachinesOutput->VirtualMachines;

    # Returns a L<Paws::BackupGateway::ListVirtualMachinesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/ListVirtualMachines>

=head1 ATTRIBUTES


=head2 HypervisorArn => Str

The Amazon Resource Name (ARN) of the hypervisor connected to your
virtual machine.



=head2 MaxResults => Int

The maximum number of virtual machines to list.



=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<maxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVirtualMachines in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

