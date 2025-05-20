
package Paws::CodeConnections::GetRepositoryLink;
  use Moose;
  has RepositoryLinkId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRepositoryLink');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::GetRepositoryLinkOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::GetRepositoryLink - Arguments for method GetRepositoryLink on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRepositoryLink on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method GetRepositoryLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRepositoryLink.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $GetRepositoryLinkOutput = $codeconnections->GetRepositoryLink(
      RepositoryLinkId => 'MyRepositoryLinkId',

    );

    # Results:
    my $RepositoryLinkInfo = $GetRepositoryLinkOutput->RepositoryLinkInfo;

    # Returns a L<Paws::CodeConnections::GetRepositoryLinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/GetRepositoryLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkId => Str

The ID of the repository link to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRepositoryLink in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

