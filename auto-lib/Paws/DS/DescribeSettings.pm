
package Paws::DS::DescribeSettings;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeSettings - Arguments for method DescribeSettings on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSettings on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSettings.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeSettingsResult = $ds->DescribeSettings(
      DirectoryId => 'MyDirectoryId',
      NextToken   => 'MyNextToken',     # OPTIONAL
      Status      => 'Requested',       # OPTIONAL
    );

    # Results:
    my $DirectoryId    = $DescribeSettingsResult->DirectoryId;
    my $NextToken      = $DescribeSettingsResult->NextToken;
    my $SettingEntries = $DescribeSettingsResult->SettingEntries;

    # Returns a L<Paws::DS::DescribeSettingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory for which to retrieve information.



=head2 NextToken => Str

The C<DescribeSettingsResult.NextToken> value from a previous call to
DescribeSettings. Pass null if this is the first call.



=head2 Status => Str

The status of the directory settings for which to retrieve information.

Valid values are: C<"Requested">, C<"Updating">, C<"Updated">, C<"Failed">, C<"Default">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSettings in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

